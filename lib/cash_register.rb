class CashRegister
  
  attr_accessor :total, :discount, :items, :prices
  
  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
    self.items = []
    self.prices = []
  end
  
  def add_item(name, price, quantity = 1)
    self.total += price * quantity
    quantity.times do 
      self.items << name
      self.prices << price
    end
  end
  
  def apply_discount
    if self.discount == 0 
      "There is no discount to apply."
    else
    self.total -= self.total*discount/100
    "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def void_last_transaction
    self.total -= self.prices.pop
  end
  
end