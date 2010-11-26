class ItemListElem < ActiveRecord::Base
  belongs_to :category
  has_one :element, :as => :elem, :dependent => :destroy
  accepts_nested_attributes_for :element

  DISPLAY_TYPE = [
    "Thumbnail List",
    "Table List",
    "Full Display List"
  ]



#  validates_numericality_of :limit
  validates :display_type, :inclusion => { :in => DISPLAY_TYPE }
  validates_numericality_of :limit, :allow_nil => true
  validates_numericality_of :max_price, :allow_nil => true
  validates_numericality_of :min_price, :allow_nil => true

  def self.display_type_select
    DISPLAY_TYPE
  end

  def display_type_partial
    self.display_type.downcase.gsub(" ", "_")
  end
end
