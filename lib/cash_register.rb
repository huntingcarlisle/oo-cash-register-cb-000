class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction_amount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_transaction_amount = price * quantity
    quantity.times{@items << title}
  end
  
  def apply_discount
    if @discount > 0
      @total = @total * ((100 - @discount)/100)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def self.void_last_transaction
    @total -= @last_transaction_amount
  end
  
end

