class LinkElem < ActiveRecord::Base
  has_one :element, :as => :elem
  belongs_to :node
  belongs_to :image, :class_name => 'Ckeditor::Picture'
  accepts_nested_attributes_for :element


  TARGET_OPTIONS = [ '', '_blank' ]
  LINK_TYPE_OPTIONS = [ 'Page', 'Url', 'File' ]

  validates_presence_of :link_name, :link_type
  validates :link_type, :inclusion => { :in => LINK_TYPE_OPTIONS }
  validates :target, :inclusion => { :in => TARGET_OPTIONS }, :allow_blank => true

  def self.link_type_options
    LINK_TYPE_OPTIONS
  end
end
