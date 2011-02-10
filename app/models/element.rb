#require  ActiveSupport::CoreExtensions::String
class Element < ActiveRecord::Base
  belongs_to :dynamic_page
  belongs_to :elem, :polymorphic => true

  acts_as_list :scope => :dynamic_page_id

  ELEM_TYPES = [
    ["Text"             ,   "text_elems"            ],
    ["Link List"        ,   "link_list_elems"       ],
    ["Item"             ,   "item_elems"            ],
    ["Item List"        ,   "item_list_elems"       ],
    #    ["Inventory Search" ,   "inventory_search_elems"],
    #    ["Recent News"      ,   "recent_news_elems"     ],
    ["Login"            ,   "login_elems"           ],
    ["Blog"             ,   "blog_elems"            ],
    ["Calendar"         ,   "calendar_elems"        ],
    #    ["Photo Gallery"    ,   "photo_gallery_elems"   ]
  ]


  before_validation :create_html_id
#  validates_numericality_of :position
  validates_numericality_of :page_area


  # Scopes

  # Returns the elements ordered from highest (first) to lowest (last)
  scope :elem_order, order('position asc')
  # Returns all Elements with the position passed in
  scope :page_area_elems, lambda {|page_area|
    where(:page_area => page_area)
  }
  # Returns the ordered elements for the passed in position
  scope :elements_for_page_area, lambda {|page_area|
    page_area_elems(page_area).elem_order
  }
  # Returns the next highest available column_order number for the passed in position
#  def self.set_highest_column_order(position)
#    col_order = 1 + Element.position_elems(position).maximum("column_order")
#    col_order
#  end


  def create_html_id
    self.html_id = self.title.empty? ? "element-#{self.id}" : self.title.downcase.parameterize.html_safe
  end

  # Select array
  def self.get_elem_select
    ELEM_TYPES
  end

  # Returns the string name of the elem controller
  def get_elem_controller
    elem_type.tableize
  end

  
end
