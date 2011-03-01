class Event < ActiveRecord::Base
  belongs_to :calendar
  has_event_calendar

  # Associated Node attributes
  has_one :node, :as => :page, :dependent => :destroy
  accepts_nested_attributes_for :node


#  validates_associated :node
  before_validation :update_node




  ####################################################################
  # Helpers
  ###########

  # Allows overriding of the self.node lookup
  alias_method :original_node, :node


  # Updates this Object's Node, setting all the attributes correctly and creating the node if need be
  def update_node
    this_node = self.original_node || self.build_node
    self.name = this_node.title.blank? ? self.name : this_node.title
    this_node.title = self.name
    this_node.menu_name = self.name
    this_node.shortcut = self.name.parameterize.html_safe
    this_node.displayed = true
  end

  # Overrides regular accessor to prevent errors if self.node doesn't exists
  def node
    unless self.original_node
      self.save # Triggers callback of update_node
    end
    self.original_node
  end
end

