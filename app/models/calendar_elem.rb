class CalendarElem < ActiveRecord::Base
  belongs_to :calendar
  has_one :element, :as => :elem, :dependent => :destroy
  accepts_nested_attributes_for :element

  DISPLAY_TYPE = [
    "Calendar",
    "Event List"
  ]


  validates_presence_of :calendar_id
  validates_associated :calendar
  validates :display_style, :inclusion => { :in => DISPLAY_TYPE }

  def self.display_type_select
    DISPLAY_TYPE
  end

  def display_type_partial
    self.display_style.downcase.gsub(" ", "_")
  end
end
