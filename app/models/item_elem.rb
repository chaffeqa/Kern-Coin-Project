class ItemElem < ActiveRecord::Base
  belongs_to :item
  has_one :element, :as => :elem, :dependent => :destroy
  accepts_nested_attributes_for :element

  DISPLAY_TYPE = [
    "Thumbnail",
    "Full Display",
    "Limited Display"
  ]



#  validates_numericality_of :limit
  validates_presence_of :item_id
  validates_associated :item
  validates :display_type, :inclusion => { :in => DISPLAY_TYPE }

  def self.display_type_select
    DISPLAY_TYPE
  end

  def display_type_partial
    self.display_type.downcase.gsub(" ", "_")
  end
end
