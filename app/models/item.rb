class Item < ActiveRecord::Base
  belongs_to :category
  has_one :sale
  has_many :cart_items
  has_many :product_images, :limit => 10
  has_one :main_image, :class_name => 'ProductImage', :conditions => ["primary_image = ?", true]

  accepts_nested_attributes_for :product_images, :allow_destroy => true, :reject_if => proc { |attributes| attributes['image'].blank? }

  validates_presence_of :name, :item_id, :cost
  validates_numericality_of :cost


  scope :get_for_sale, where(:for_sale => true)
  scope :displayed, where(:display => true)
  
  def short_details
    return self.details[0,30] << "..."
  end
end
