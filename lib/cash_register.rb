class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction
  @@items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @@items << title
    @total + (price*quantity)
  end


  def apply_discount(discount = nil)
    if discount = true
      self.total * (discount / 100)
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
