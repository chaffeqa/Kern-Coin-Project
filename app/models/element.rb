class Element < ActiveRecord::Base
   belongs_to :template
  belongs_to :elem, :polymorphic => true

  ELEM_TYPES = [
    ["Text"           ,   "text_elems"          ],
#    ["Blog"           ,   "blog_elems"          ],
#    ["Donation"       ,   "donation_elems"      ],
    ["Calendar"       ,   "calendar_elems"      ],
#    ["Form"           ,   "blog_elems"          ],
    ["Link List"      ,   "link_list_elems"     ],
#    ["Evite"          ,   "evite_elems"         ],
    ["Login"          ,   "login_elems"         ],
    ["Photo Gallery"  ,   "photo_gallery_elems" ]
  ]

  # Scopes

  # Returns the elements ordered from highest (first) to lowest (last)
  scope :elem_order, order('column_order desc')
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
    col_order = 0 + Element.position_elems(position).count
    col_order
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
