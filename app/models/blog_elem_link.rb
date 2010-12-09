class BlogElemLink < ActiveRecord::Base
  belongs_to :blog
  belongs_to :blog_elem
end
