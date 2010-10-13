class Node < ActiveRecord::Base
#  belongs_to :parent
#  has_many :children, :dependent => :nullify
  belongs_to :page, :polymorphic => true

  acts_as_tree :order => 'position'
  acts_as_list :scope => :parent_id

  scope :displayed, where(:displayed => true)
  scope :dynamic_pages, where(:page_type => 'DynamicPage')
  scope :categories, where(:page_type => 'Category')

#  validates_uniqueness_of :shortcut
  
  PAGE_TYPES = [
    "Inventory",
    "Inventory Item",
    "Inventory Category",
    "Page - Basic",
    "Page - Side Panel",
    "Page - Home",
    "Blog",
    "Blog Post",
    "Archives - Article",
    "Archives - Magazine",
    "Auction"
  ]

  def url
    if self.controller and self.action and self.page_id
      return "/#{self.controller}/#{self.action}/#{self.page_id}"
    end
    if self.controller and self.action
      return "/#{self.controller}/#{self.action}"
    end
    if self.controller
      return "/#{self.controller}"
    end
    return "/#{self.shortcut}"
  end

  def self.blog_node
    self.where(:title => 'Blogs').first
  end
end
