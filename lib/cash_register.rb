class CashRegister

  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount * 0.01
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times{|title| @items << title}
    
  end
  
  def apply_discount
    if @discount > 0
      @total = @total * (1 - @discount)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
 
  
end

