class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
    self.items = []
  end
  
  def add_item(name, price, quantity = 1)
    self.total += price * quantity
    self.items << self.name
  end
  
  def apply_discount
    if self.discount == 0 
      "There is no discount to apply."
    else
    self.total -= self.total*discount/100
    "After the discount, the total comes to $#{self.total}."
    end
  end
  
end