class Category < ActiveRecord::Base
  has_many :items

  validates_presence_of :title
  validates_uniqueness_of :title
end
