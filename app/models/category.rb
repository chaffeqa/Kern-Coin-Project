class Category < ActiveRecord::Base

  has_many :items, :finder_sql =>
    'SELECT item.* FROM items AS item
    JOIN nodes AS item_node ON item_node.page_id = item.id AND item_node.page_type = "Item"
    JOIN nodes AS cat_node ON item_node.parent_id = cat_node.id
    WHERE cat_node.page_id = #{id} AND cat_node.page_type = "Category"'
  
  # Associated Node attributes
  has_one :node, :as => :page, :dependent => :destroy
  accepts_nested_attributes_for :node

  scope :title_like, lambda {|title| where('title LIKE ?', title)}
  

  has_attached_file :image,
    :url  => "/site_assets/categories/:id/image_:style.:extension",
    :path => ":rails_root/public/site_assets/categories/:id/image_:style.:extension",
    :styles => { :thumb => ['112x112#', :gif] }

  #  validates_associated :node
  before_validation :update_node

  def update_node
    self.node.title =  self.title
    self.node.menu_name =   self.title
    self.node.shortcut = self.title.parameterize.html_safe  
  end

  def has_items?
    return false if self.node.children.empty?
    child = self.node.children.first
    if child.page_type == 'Item'
      return true
    end
    return false
  end

  def self.get_inventory
    self.where(:title => 'Inventory').first
  end

  def thumbnail_image
    self.image? ? self.image.url(:thumb) : 'no_image_thumb.gif'
  end

  def original_image
    self.image? ? self.image.url : 'no_image_full_size.gif'
  end
  


  #  def default_node
  #    unless self.node
  #      self.create_node({
  #          :title => self.title,
  #          :menu_name => self.title,
  #          :displayed => true,
  #          :shortcut => self.title.parameterize.html_safe
  #        })
  #    else
  #      self.node.update_attributes(
  #        :title => self.title,
  #        :menu_name => self.title,
  #        :displayed => true,
  #        :shortcut => self.title.parameterize.html_safe
  #      )
  #    end
  #  end
  #  def update_node
  #    self.default_node
  #    self.node.save!
  #  end
end
