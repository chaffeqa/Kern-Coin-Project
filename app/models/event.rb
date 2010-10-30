class Event < ActiveRecord::Base
  belongs_to :calendar
  has_event_calendar

  # Associated Node attributes
  has_one :node, :as => :page, :dependent => :destroy
  accepts_nested_attributes_for :node


#  validates_associated :node
  before_validation :update_node

  def update_node
    self.node.title = self.node.title.nil? || self.node.title.empty? ? self.name : self.node.title
    self.node.menu_name = self.node.menu_name.nil? || self.node.menu_name.empty? ? self.name : self.node.menu_name
    self.node.shortcut = self.node.shortcut.nil? || self.node.shortcut.empty? ? self.name.parameterize.html_safe : self.node.shortcut
  end

#  def update_node
#    self.default_node
#    self.node.parent = Node.calendar_node if ( self.node and not self.node.parent )
#    self.node.save!
#  end
#
#  def default_node
#    unless self.node
#      self.create_node({
#          :title => self.name,
#          :menu_name => self.name,
#          :displayed => true,
#          :shortcut => self.name.parameterize.html_safe
#        })
#    else
#      self.node.update_attributes(
#        :name => self.name,
#        :menu_name => self.name,
#        :shortcut => self.name.parameterize.html_safe
#      )
#    end
#  end
end
