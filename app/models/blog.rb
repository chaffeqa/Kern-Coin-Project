class Blog < ActiveRecord::Base
  has_many :posts
  has_many :blog_elems
  
  # Associated Node attributes
  has_one :node, :as => :page
  accepts_nested_attributes_for :node
  
end
