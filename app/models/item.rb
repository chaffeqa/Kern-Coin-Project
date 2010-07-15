class Item < ActiveRecord::Base
  belongs_to :category
  has_one :sale
  has_many :cart_items
  has_attached_file :main_image,
    :url  => "/images/items/:name/main_image_:style.:extension",
    :path => ":rails_root/public/images/items/:name/main_image_:style.:extension",
    :styles => { :thumb => '100x100#' }

  validates_attachment_presence :main_image
	validates_attachment_size :main_image, :less_than => 2.megabytes
  validates_attachment_content_type :main_image
  validates_presence_of :name, :item_id, :cost
  validates_numericality_of :cost


  scope :get_for_sale, where(:for_sale => true)
  
  def short_details
    return self.details[0,30] << "..."
  end
end
