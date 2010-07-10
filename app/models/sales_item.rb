class SalesItem < ActiveRecord::Base
  belongs_to :sale
  belongs_to :item

  def self.from_cart_item(cart_item)
    si = self.new
    si.item = cart_item.item
    si.quantity = cart_item.quantity
    si.total_total = cart_item.total
    si
  end
  
end
