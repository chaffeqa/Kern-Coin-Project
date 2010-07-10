class Sale < ActiveRecord::Base
  belongs_to :user
  has_many :sale_items

  def self.add_sale_items_from_cart(cart)
    sum = 0
    cart.items.each do |item|
      si = SaleItem.from_cart_item(item)
      self.sale_items << si
      sum += item.total
    end
    self.total = sum
  end
end
