class Post < ActiveRecord::Base
  has_one :node, :as => :page
  accepts_nested_attributes_for :node
  
  scope :recent_first, order("created_at desc")
  scope :recent_5, recent_first.limit(5)

  validates_presence_of :title, :body
end
