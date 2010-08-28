class Category < ActiveRecord::Base
  has_many :items
  has_many :children, :class_name => "Category", :dependent => :nullify
  belongs_to :parent, :class_name => "Category"

  has_attached_file :image,
    :url  => "/images/categories/:id/image_:style.:extension",
    :path => ":rails_root/public/images/categories/:id/image_:style.:extension",
    :styles => { :thumb => ['80x80#', :gif] }

#  validates_attachment_size :image, :less_than => 2.megabytes, :if => Proc.new {self.image?}
#  validates_attachment_content_type :image, :content_type => [ 'image/jpeg', 'image/png', 'image/gif', 'image/x-png', 'image/pjpeg' ], :if => Proc.new {self.image?}
  validates_presence_of :title
  validates_uniqueness_of :title

  def has_items?
    not self.items.empty?
  end

  def self.get_inventory
    self.where(:title => 'Inventory').first
  end

  def thumbnail_image
    self.image? ? self.image.url(:thumb) : 'no_image.gif'
  end

  def original_image
    self.image? ? self.image.url : 'no_image.gif'
  end
end
