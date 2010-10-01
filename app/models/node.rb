class Node < ActiveRecord::Base
  belongs_to :node
  has_many :nodes, :dependent => :nullify
  belongs_to :page, :polymorphic => true
  
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
end
