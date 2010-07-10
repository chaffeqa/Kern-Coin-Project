class Item < ActiveRecord::Base
  belongs_to :category
  has_one :sale
  has_many :cart_items

  validates_presence_of :name, :item_id, :cost
  validates_numericality_of :cost


  scope :get_for_sale, where(:for_sale => true)


  def short_details
    return self.details[0,30] << "..."
  end
end
