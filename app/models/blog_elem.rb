class BlogElem < ActiveRecord::Base
  has_one :element, :as => :elem, :dependent => :destroy, :validate => true
  has_many :blog_elem_links, :dependent => :destroy
  has_many :blogs, :through => :blog_elem_links
  has_one :blog, :dependent => :destroy, :validate => true
  accepts_nested_attributes_for :element
  accepts_nested_attributes_for :blog

  DISPLAY_TYPE = [
    "Archive",
    "List",
    "List with Body"
  ]



  #  validates_numericality_of :limit
  validates :display_type, :inclusion => { :in => DISPLAY_TYPE }
  after_save :persist_title
  #  validates_associated :blog


  def persist_title
    puts self.blog.title
    if self.element
      self.element.title = self.blog.title
      self.element.save
    end
  end

  def self.display_type_select
    DISPLAY_TYPE
  end

  def display_type_partial
    self.display_type.downcase.gsub(" ", "_")
  end
end

