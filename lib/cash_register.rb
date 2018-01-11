class CashRegister
  attr_accessor :total, :discount

  def initialize(total = 0)
    @total = total
    @discount = 20
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    @total = @total - @discount
    return "After the discount, the total comes to #{total}"
  end

end
