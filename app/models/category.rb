class Category < ActiveRecord::Base
  has_many :items
  has_many :children, :class_name => "Category", :dependent => :nullify
  belongs_to :parent, :class_name => "Category", :foreign_key => 'category_id'

  # Associated Node attributes
  has_one :node, :as => :page
  accepts_nested_attributes_for :node
  after_save :update_node_relationships

  has_attached_file :image,
    :url  => "/site_assets/categories/:id/image_:style.:extension",
    :path => ":rails_root/public/site_assets/categories/:id/image_:style.:extension",
    :styles => { :thumb => ['112x112#', :gif] }

  
  

  #  validates_attachment_size :image, :less_than => 2.megabytes, :if => Proc.new {self.image?}
  #  validates_attachment_content_type :image, :content_type => [ 'image/jpeg', 'image/png', 'image/gif', 'image/x-png', 'image/pjpeg' ], :if => Proc.new {self.image?}
  validates_presence_of :title
  validates_uniqueness_of :title

  def has_items?
    not self.items.empty?
  end

  def self.get_inventory
    self.where(:title => 'Inventory').first
  end

  def thumbnail_image
    self.image? ? self.image.url(:thumb) : 'no_image_preview.gif'
  end

  def original_image
    self.image? ? self.image.url : 'no_image_full_size.gif'
  end


  def create_default_node
    unless self.node
      self.create_node({
          :title => self.title,
          :menu_name => self.title,
          :displayed => true,
          :controller => 'inventory',
          :action => 'category'
        })
    end
  end

  def update_node_relationships
    self.create_default_node
    self.parent ? self.node.node = self.parent.node : self.node.node = nil
    self.children.each do |child_category|
      self.node.nodes << child_category.node unless self.node.nodes.exists?(child_category.node)
    end
    self.items.each do |item|
      self.node.nodes << item.node unless self.node.nodes.exists?(item.node)
    end
    self.node.save!
  end
end
