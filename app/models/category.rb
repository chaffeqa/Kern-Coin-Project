class Category < ActiveRecord::Base
  has_many :items
  has_many :children, :class_name => "Category", :dependent => :nullify
  belongs_to :parent, :class_name => "Category"

  validates_presence_of :title
  validates_uniqueness_of :title
end
