class ProductImage < ActiveRecord::Base
  belongs_to :item

  has_attached_file :image,
    :url  => "/images/items/:id/image_:style.:extension",
    :path => ":rails_root/public/images/items/:id/image_:style.:extension",
    :styles => {:display => ['250x250#', :gif], :thumb => ['80x80#', :gif] }

  validates_attachment_size :image, :less_than => 2.megabytes
  validates_attachment_content_type :image, :content_type => [ 'image/jpeg', 'image/png', 'image/gif', 'image/x-png', 'image/pjpeg' ]
  #  validates_uniqueness_of :primary_image, :scope => [:item_id], :message => 'Only one item image can be the primary image for that item.', :if => :is_main_image?

  def is_main_image?
    self.primary_image == true
  end

  def thumbnail_image
    self.image ? self.image.url(:thumb) : 'no_image.gif'
  end

  def display_image
    self.image ? self.image.url(:display) : 'no_image.gif'
  end

  def original_image
    self.image ? self.image.url : 'no_image.gif'
  end


end
