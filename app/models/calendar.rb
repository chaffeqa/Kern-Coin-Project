class Calendar < ActiveRecord::Base
  has_many :events
  has_many :calendar_elems

  # Associated Node attributes
  has_one :node, :as => :page, :dependent => :destroy
  accepts_nested_attributes_for :node

#  validates_associated :node
  before_validation :update_node

  def update_node
    self.node.title = self.node.title.nil? || self.node.title.empty? ? self.title : self.node.title
    self.node.menu_name = self.node.menu_name.nil? || self.node.menu_name.empty? ? self.title : self.node.menu_name
    self.node.shortcut = self.node.shortcut.nil? || self.node.shortcut.empty? ? self.title.parameterize.html_safe : self.node.shortcut
  end
#
#  def update_node
#    self.default_node
#    self.node.parent = Node.calendar_node if ( self.node and not self.node.parent )
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
#        :name => self.title,
#        :menu_name => self.title,
#        :shortcut => self.title.parameterize.html_safe
#      )
#    end
#  end
end
