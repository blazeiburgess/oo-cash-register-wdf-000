class CashRegister
  attr_accessor :total
  def initialize(employee_discount = nil)
    @total = 0
    @employee_discount = employee_discount
    @items = []
  end
  def discount
    @employee_discount
  end
  def add_item(title, price, quantity=1)
    @last_trans = price * quantity
    @total += @last_trans
    quantity.times do
      @items << title
    end
  end
  def apply_discount
    return "There is no discount to apply." if !@employee_discount
    @total *= 1 - (@employee_discount / 100.0)
    p "After the discount, the total comes to $#{@total.to_i}."
  end
  def items
    @items
  end
  def void_last_transaction
    @total -= @last_trans
  end
end
