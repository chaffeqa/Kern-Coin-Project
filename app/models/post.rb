class Post < ActiveRecord::Base
  scope :recent_first, order("created_at desc")
  scope :recent_5, recent_first.limit(5)

  validates_presence_of :title, :body
end