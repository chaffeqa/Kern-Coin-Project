class Item < ActiveRecord::Base
  belongs_to :category
  has_one :sale
  has_many :cart_items
  has_attached_file :main_image,
    :url  => "/images/items/:id/main_image_:style.:extension",
    :path => ":rails_root/public/images/items/:id/main_image_:style.:extension",
    :styles => {:display => ['250x250#', :gif], :thumb => ['80x80#', :gif],
    :default_url => "/images/items/no_image.gif" }

#  validates_attachment_size :main_image, :less_than => 2.megabytes
#  validates_attachment_content_type :main_image, :content_type => [ 'image/jpeg', 'image/png', 'image/gif', 'image/x-png', 'image/pjpeg' ]
  validates_presence_of :name, :item_id, :cost
  validates_numericality_of :cost


  scope :get_for_sale, where(:for_sale => true)
  scope :displayed, where(:display => true)
  
  def short_details
    return self.details[0,30] << "..."
  end
end
