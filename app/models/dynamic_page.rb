class DynamicPage < ActiveRecord::Base
#  belongs_to :node
  has_many :elements
  
  # Associated Node attributes
  has_one :node, :as => :page
  accepts_nested_attributes_for :node

  VIEW_NAMES = [
    "Home",
    "Inside"
  ]

#  validates :template_name, :inclusion => { :in => VIEW_NAMES }


  def underscore_template_name
    template_name.gsub(/ /, '_').underscore
  end


end
