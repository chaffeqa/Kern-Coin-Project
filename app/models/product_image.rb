class ProductImage < ActiveRecord::Base
  belongs_to :item

  has_attached_file :image,
    :url  => "/images/items/:id/image_:style.:extension",
    :path => ":rails_root/public/images/items/:id/image_:style.:extension",
    :styles => {:display => ['250x250#', :gif], :thumb => ['80x80#', :gif] },
    :default_url => "/images/items/no_image.gif"

  validates_attachment_size :image, :less_than => 2.megabytes
  validates_attachment_content_type :image, :content_type => [ 'image/jpeg', 'image/png', 'image/gif', 'image/x-png', 'image/pjpeg' ]
end
