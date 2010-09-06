class TextElem < ActiveRecord::Base
  has_one :element, :as => :elem

  validates_presence_of :text
end
