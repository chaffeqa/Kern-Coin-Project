class Event < ActiveRecord::Base
  belongs_to :calendar
  has_event_calendar

  # Associated Node attributes
  has_one :node, :as => :page
  accepts_nested_attributes_for :node


  validates_associated :node

  def update_node
    self.default_node
    self.node.parent = Node.calendar_node if ( self.node and not self.node.parent )
    self.node.save!
  end

  def default_node
    unless self.node
      self.create_node({
          :title => self.name,
          :menu_name => self.name,
          :displayed => true,
          :shortcut => self.name.parameterize.html_safe
        })
    else
      self.node.update_attributes(
        :name => self.name,
        :menu_name => self.name,
        :shortcut => self.name.parameterize.html_safe 
      )
    end
  end
end
