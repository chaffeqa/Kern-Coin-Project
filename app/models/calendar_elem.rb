class CalendarElem < ActiveRecord::Base
  belongs_to :calendar
  has_one :element, :as => :elem, :dependent => :destroy
  accepts_nested_attributes_for :element

  DISPLAY_TYPE = [
    "Calendar",
    "Event List"
  ]



  def self.display_type_select
    DISPLAY_TYPE
  end
end
