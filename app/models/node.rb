class Node < ActiveRecord::Base
  belongs_to :page, :polymorphic => true
  belongs_to :category, :class_name => 'Category', :foreign_key => "page_id"

  acts_as_tree :order => 'position'
  acts_as_list :scope => :parent_id

  scope :displayed, where(:displayed => true)
  scope :dynamic_pages, where(:page_type => 'DynamicPage')
  scope :categories, where(:page_type => 'Category')
  scope :calendars, where(:page_type => 'Calendar')
  scope :items, where(:page_type => 'Item')
  scope :no_items, where("page_type != 'Item' OR page_type IS NULL")

  validates_presence_of :shortcut, :message => 'URL cannot be blank.'
  validates_presence_of :title
  validates_presence_of :menu_name
  validate :shortcut_html_safe?
  validate :check_unique_shortcut?
  #  validate :ensure_unique_root_node
  before_validation :fill_missing_fields

  def fill_missing_fields
    unless self.title.blank?
      self.menu_name = self.title if self.menu_name.blank?
      self.shortcut = self.title.parameterize.html_safe if self.shortcut.blank?
    else
      unless self.menu_name.blank?
        self.title = self.menu_name if self.title.blank?
        self.shortcut = self.menu_name.parameterize.html_safe if self.shortcut.blank?
      end
    end
  end

  def ensure_unique_root_node
    root_nodes = Node.where(:parent_id => nil)
    if root_nodes.count > 1
      problem_nodes = root_nodes - (Node.where(:parent_id => nil).where(:title => 'Home') )
      problem_nodes.each {|node| node.update_attributes(:displayed => false, :parent_id => ' ') }
    end
    true
  end

  def check_unique_shortcut?    
    if  (Node.exists?(:shortcut => shortcut) and new_record?)
      puts "Problem Node: #{title}, #{id} URL: #{shortcut}, new_record: #{new_record?}"
      addition = Node.where('shortcut LIKE ?', shortcut).count
      suggested = self.shortcut + "_" + addition.to_s
      errors.add(:shortcut, "URL shortcut already exists in this site.  Suggested Shortcut: '#{suggested}'")
    end
  end

  def self.home
    self.where('shortcut LIKE ?', 'Home').count == 1 ? self.root.where('shortcut LIKE ?', 'Home') : nil
  end


  def shortcut_html_safe?
    errors.add(:shortcut, "Shortcut cannot contain spaces") if shortcut.include? " "
    errors.add(:shortcut, "Shortcut cannot contain slashes") if shortcut.include? "/"
    errors.add(:shortcut, "Shortcut cannot contain '?'") if shortcut.include? "?"
  end

  def url
    if self.controller and self.action and self.page_id
      return "/#{self.controller}/#{self.action}/#{self.page_id}"
    end
    if self.controller and self.action
      return "/#{self.controller}/#{self.action}"
    end
    if self.controller
      return "/#{self.controller}"
    end
    return "/#{self.shortcut}"
  end

  def self.blog_node
    self.where(:title => 'Blogs').first
  end

  def self.calendar_node
    self.where(:title => 'Calendars').first
  end

  def self.inventory_node
    self.where(:title => 'Inventory').first
  end

  def self.order_tree(json)
    Node.update_all(['position = ?', nil])
    Node.order_helper(json)
  end

  # sets this node's shortcut to the desired shortcut or closest related shortcut that will be unique in the database.  If a conflict
  # occurs than a numeric increment will be appended as a prefix and the increment number will be returned.  If no conflict occured
  # than the method will return 0 (or the passed in increment if one was passed in)
  def set_safe_shortcut(desired_shortcut, node_id, increment=0)
    prefix = increment == 0 ? "" : increment.to_s + "-"
#    puts "attempting to assign node: (#{title}, #{node_id}) to a shorcut: #{prefix + desired_shortcut}"
    while Node.where('nodes.shortcut = ? AND nodes.id != ?', prefix + desired_shortcut, node_id).exists?
      increment += 1
      prefix = increment.to_s + "-"
#      puts "failed assignment... new shortcut: #{prefix + desired_shortcut}"
    end
    self.shortcut = prefix + desired_shortcut
#    puts "Assigned! new shortcut should be: #{self.shortcut}"
    return increment
  end

  private
  def self.order_helper( json, position = 0, parent_id = nil)
    json.each do |hash|  
      node_id = hash['attr']['id'].delete('node_')
      Node.update_all(['position = ?, parent_id = ?', position, parent_id], ['id = ?', node_id])
      position += 1
      if hash['children']
        position = order_helper( hash['children'], position, node_id)
      end
    end
    position
  end

end
