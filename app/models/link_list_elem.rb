class LinkListElem < ActiveRecord::Base
  has_many :links
  has_one :element, :as => :elem
end
