class Cart
  
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    current_item = @items.find {|cart_item| cart_item.item == item}
    if current_item
      current_item.increment_quantity
    else
      current_item = CartItem.new(item)
      @items << current_item
    end
    current_item
  end

  def total_price
    @items.sum { |cart_item| cart_item.total }
  end
  
  def total_items
    @items.sum { |cart_item| cart_item.quantity }
  end
end