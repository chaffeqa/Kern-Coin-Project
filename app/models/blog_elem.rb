class BlogElem < ActiveRecord::Base
  has_one :element, :as => :elem
  belongs_to :blog
  accepts_nested_attributes_for :element

  validates_numericality_of :limit
  validates_presence_of :blog_id
  validates_associated :blog
end
