class Blog < ActiveRecord::Base
  has_many :posts
  belongs_to :blog_elem
  has_many :blog_elem_links, :dependent => :destroy
  has_many :blog_elems, :through => :blog_elem_links

  # Associated Node attributes
  has_one :node, :as => :page, :dependent => :destroy, :validate => true
  accepts_nested_attributes_for :node
  before_save :update_node
#  validates_associated :node

  def update_node
    this_node = self.node || self.build_node
    self.title = this_node.title.blank? ? self.title : this_node.title
    this_node.title = self.title
    this_node.menu_name = self.title
    this_node.shortcut = self.title.parameterize.html_safe
    this_node.displayed = true
  end

  # Overrides regular accessor to prevent errors if self.node doesn't exists
  def node
    unless self.node
      self.save # Triggers callback of update_node
    end
    super
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

