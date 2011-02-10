class LinkListElem < ActiveRecord::Base
  has_one :element, :as => :elem, :dependent => :destroy
  has_many :link_elems, :dependent => :destroy
  accepts_nested_attributes_for :link_elems, :allow_destroy => true, :reject_if => proc { |attributes| attributes['link_name'].blank? }
  accepts_nested_attributes_for :element

end
