class Link < ActiveRecord::Base
  belongs_to :link_list_elem
  belongs_to :node

  has_attached_file :link_file,
    :url  => "/files/link_files/link_file_:id.:extension",
    :path => ":rails_root/public/files/link_files/link_file_:id.:extension"


  TARGET_OPTIONS = [ '', '_blank' ]
  LINK_TYPE_OPTIONS = [ 'Page', 'Url', 'File' ]

  validates_presence_of :link_name, :link_type
  validates :link_type, :inclusion => { :in => LINK_TYPE_OPTIONS }
  validates :target, :inclusion => { :in => TARGET_OPTIONS }

  def self.link_type_options
    LINK_TYPE_OPTIONS
  end
end
