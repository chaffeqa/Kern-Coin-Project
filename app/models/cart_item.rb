class CartItem

  attr_reader :item, :quantity

  def initialize(item)
    @item = item
    @quantity = 1
  end

  def increment_quantity
    @quantity += 1
  end

  def title
    @item.name
  end
  
  def total
    @item.cost * @quantity
  end
end