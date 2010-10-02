#require  ActiveSupport::CoreExtensions::String
class Element < ActiveRecord::Base
  belongs_to :template
  belongs_to :elem, :polymorphic => true

  ELEM_TYPES = [
    ["Text"             ,   "text_elems"            ],
    ["Link"             ,   "link_elems"            ],
    ["Inventory Search" ,   "inventory_search_elems"],
#    ["Recent News"      ,   "recent_news_elems"     ],
    #    ["Login"            ,   "login_elems"           ],
    ["Blog"             ,   "blog_elems"                 ],
    #    ["Calendar"         ,   "calendar_elems"        ],
    #    ["Photo Gallery"    ,   "photo_gallery_elems"   ]
  ]


  before_validation :create_html_id
  validates_numericality_of :position
  validates_numericality_of :column_order


  # Scopes

  # Returns the elements ordered from highest (first) to lowest (last)
  scope :elem_order, order('column_order asc')
  # Returns all Elements with the position passed in
  scope :position_elems, lambda {|position|
    where(:position => position)
  }
  # Returns the ordered elements for the passed in position
  scope :elements_for_position, lambda {|position|
    position_elems(position).elem_order
  }
  # Returns the next highest available column_order number for the passed in position
  def self.set_highest_column_order(position)
    col_order = 1 + Element.position_elems(position).maximum("column_order")
    col_order
  end


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
