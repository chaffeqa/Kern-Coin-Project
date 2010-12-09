class BlogElem < ActiveRecord::Base
  has_one :element, :as => :elem, :dependent => :destroy
  has_many :blog_elem_links, :dependent => :destroy
  has_many :blogs, :through => :blog_elem_links
  has_one :blog, :dependent => :destroy
  accepts_nested_attributes_for :element
  accepts_nested_attributes_for :blog

  DISPLAY_TYPE = [
    "Archive",
    "List",
    "List with Body"
  ]

  

  #  validates_numericality_of :limit
  validates :display_type, :inclusion => { :in => DISPLAY_TYPE }
  #  validates_associated :blog



  def self.display_type_select
    DISPLAY_TYPE
  end

  def display_type_partial
    self.display_type.downcase.gsub(" ", "_")
  end
end
