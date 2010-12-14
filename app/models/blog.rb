class Blog < ActiveRecord::Base
  has_many :posts
  belongs_to :blog_elem
  has_many :blog_elem_links, :dependent => :destroy
  has_many :blog_elems, :through => :blog_elem_links
  
  # Associated Node attributes
  has_one :node, :as => :page, :dependent => :destroy
  accepts_nested_attributes_for :node

  after_save :update_node
  validates_presence_of :title
  validates_uniqueness_of :title
#  validates_associated :node

  def update_node
    this_node = self.node || self.build_node
    this_node.title = this_node.title.blank? ? self.title : this_node.title
    this_node.menu_name = this_node.menu_name.blank? ? self.title : this_node.menu_name
    this_node.shortcut = this_node.shortcut.blank? ? self.title.parameterize.html_safe : this_node.shortcut
    this_node.displayed = true
    this_node.save!
  end

#  def update_node
#    self.default_node
#    self.node.parent = Node.blog_node if ( self.node and not self.node.parent )
#    self.node.save!
#  end
#
#  def default_node
#    unless self.node
#      self.create_node({
#          :title => self.title,
#          :menu_name => self.title,
#          :displayed => true,
#          :shortcut => self.title.parameterize.html_safe
#        })
#    else
#      self.node.update_attributes(
#        :title => self.title,
#        :menu_name => self.title,
#        :displayed => true,
#        :shortcut => self.title.parameterize.html_safe
#      )
#    end
#  end
  
end
