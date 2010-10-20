class Item < ActiveRecord::Base
  #  belongs_to :category
  has_many :product_images, :limit => 10
  has_one :main_image, :class_name => "ProductImage", :conditions => {:primary_image => true}
  accepts_nested_attributes_for :product_images, :allow_destroy => true, :reject_if => proc { |attributes| attributes['image'].blank? }

  # Associated Node attributes
  has_one :node, :as => :page
  accepts_nested_attributes_for :node
  
  validates_associated :node
  validates_presence_of :item_id, :cost, :name
  validates_numericality_of :cost

  scope :get_for_sale, where(:for_sale => true)
  scope :displayed, where(:display => true)

  def thumbnail_image
    self.main_image ? self.main_image.thumbnail_image : 'no_image_thumb.gif'
  end

  def original_image
    self.main_image ? self.main_image.full_size_image : 'no_image_full_size.gif'
  end

  def short_details
    return self.details[0,30] << "..."
  end

  def default_node
    unless self.node
      self.create_node({
          :title => self.name,
          :menu_name => self.name,
          :displayed => true,
          :shortcut => self.name.parameterize.html_safe
        })
    else
      self.node.update_attributes(
        :name => self.name,
        :menu_name => self.name,
        :shortcut => self.name.parameterize.html_safe 
      )
    end
  end

  def update_node
    self.default_node
    self.node.save!
  end
end
