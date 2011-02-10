class LinkElem < ActiveRecord::Base
  belongs_to :node
  belongs_to :image, :class_name => 'Ckeditor::Picture'
  belongs_to :link_list_elem

  has_attached_file :link_file,
    :url => '/site_assets/files/link_file_:id.:extension',
    :path => ":rails_root/public/site_assets/files/link_file_:id.:extension"

  TARGET_OPTIONS = [ '', '_blank' ]
  LINK_TYPE_OPTIONS = [ 'Page', 'Url', 'File' ]

  validates_presence_of :link_name, :link_type
  validates :link_type, :inclusion => { :in => LINK_TYPE_OPTIONS }
  validates :target, :inclusion => { :in => TARGET_OPTIONS }, :allow_blank => true

  ####################################################################
  # Helpers
  ###########

  def thumbnail_image
    self.image? ? self.image.url(:thumb) : 'no_image_thumb.gif'
  end
  def original_image
    self.image? ? self.image.url : 'no_image_full_size.gif'
  end

  def self.link_type_options
    LINK_TYPE_OPTIONS
  end
end
