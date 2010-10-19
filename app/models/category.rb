class Category < ActiveRecord::Base
  
  # Associated Node attributes
  has_one :node, :as => :page
  accepts_nested_attributes_for :node
  

  has_attached_file :image,
    :url  => "/site_assets/categories/:id/image_:style.:extension",
    :path => ":rails_root/public/site_assets/categories/:id/image_:style.:extension",
    :styles => { :thumb => ['112x112#', :gif] }

  validates_associated :node  

  def has_items?
    child = self.node.children.first
    return child.page_type == 'Item'
  end

  def self.get_inventory
    self.where(:title => 'Inventory').first
  end

  def thumbnail_image
    self.image? ? self.image.url(:thumb) : 'no_image_preview.gif'
  end

  def original_image
    self.image? ? self.image.url : 'no_image_full_size.gif'
  end
  

  def default_node
    unless self.node
      self.create_node({
          :title => self.title,
          :menu_name => self.title,
          :displayed => true,
          :shortcut => self.title.parameterize.html_safe
        })
    else
      self.node.update_attributes(
        :title => self.title,
        :menu_name => self.title,
        :displayed => true,
        :shortcut => self.title.parameterize.html_safe 
      )
    end
  end
  def update_node
    self.default_node
    self.node.save!
  end
end
