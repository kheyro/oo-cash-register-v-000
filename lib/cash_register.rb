class CashRegister
  attr_accessor :total, :discount, :item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times { @item << title }
    # @item.fill(title, array.size, quantity)
  end

  def apply_discount
    @total -= @total * @discount / 100
    @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total}."
  end

  def items
    @item
  end

end
