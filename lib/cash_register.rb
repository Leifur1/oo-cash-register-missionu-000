class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction
  @@items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    self.total += (price*quantity)
    quantity.times do
      @@items << title
    end
  end


  def apply_discount(discount = nil)
    if discount != 0
      self.total = (total * (100.0 - discount)/100).to_i
      "After the discount, the total comes to $#{self.total}."
   else
     "There is no discount to apply."
   end
  end

  def add_items(item)
    @@items <<item
    @@items
  end

  def void_last_transaction
    @@total.pop
  end
end
