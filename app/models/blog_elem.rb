class BlogElem < ActiveRecord::Base
  has_one :element, :as => :elem
  belongs_to :blog
  accepts_nested_attributes_for :element

  DISPLAY_TYPE = [
    "Archive",
    "List",
    "List with Body"
  ]

  

#  validates_numericality_of :limit
  validates_presence_of :blog_id
  validates_associated :blog
  validates :display_type, :inclusion => { :in => DISPLAY_TYPE }

  def self.display_type_select
    DISPLAY_TYPE
  end
end