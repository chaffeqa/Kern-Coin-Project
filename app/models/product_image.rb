class ProductImage < ActiveRecord::Base
  belongs_to :item

  has_attached_file :image,
    :url  => "/site_assets/items/:id/image_:style.:extension",
    :path => ":rails_root/public/site_assets/items/:id/image_:style.:extension",
    :styles => {:full_size => ['315x315#', :png], :preview => ['75x75#', :png], :thumb => ['112x112#', :png] }

  validates_attachment_size :image, :less_than => 2.megabytes
  validates_attachment_content_type :image, :content_type => [ 'image/jpeg', 'image/png', 'image/gif', 'image/x-png', 'image/pjpeg' ]
  #  validates_uniqueness_of :primary_image, :scope => [:item_id], :message => 'Only one item image can be the primary image for that item.', :if => :is_main_image?

  def is_main_image?
    self.primary_image == true
  end

  def thumbnail_image
    self.image ? self.image.url(:thumb) : 'no_image_thumb.gif'
  end

  def preview_image
    self.image ? self.image.url(:preview) : 'no_image_preview.gif'
  end

  def full_size_image
    self.image ? self.image.url(:full_size) : 'no_image_full_size.gif'
  end

  def original_image
    self.image ? self.image.url(:original) : 'no_image_full_size.gif'
  end


end

