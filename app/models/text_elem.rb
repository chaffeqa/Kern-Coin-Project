class TextElem < ActiveRecord::Base
  has_one :element, :as => :elem, :dependent => :destroy
  accepts_nested_attributes_for :element

end
