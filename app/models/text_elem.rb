class TextElem < ActiveRecord::Base
  has_one :element, :as => :elem
  accepts_nested_attributes_for :element

  validates_presence_of :text
end
