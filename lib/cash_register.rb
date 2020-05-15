class CashRegister
  
  attr_accessor :total, :discount, :last_transaction, :current_transaction
  
  def initialize(discount = nil)
    self.total = 0 
    self.discount = discount
  end
  
  def add_item(name, price, quantity = 1)
    self.total += price * quantity
  end
  
  def apply_discount
    self.total -= discount
    "After the discount, the total comes to $#{self.total}."
  end
  
end