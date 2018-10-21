class CashRegister

  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount * 0.01
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @items << title
    return @total
  end
  
  def apply_discount
    @total = @total * (1 - @discount)
  end
  
end

