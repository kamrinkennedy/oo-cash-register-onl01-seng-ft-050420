class CashRegister
  
  attr_accessor :total, :discount, :last_transaction, :current_transaction
  
  def initialize(discount = 0)
    self.total = 0
    self.discount = discount
  end
  
  def add_item(name, price, quantity = 1)
    self.total += price * quantity
  end
  
  def apply_discount
    self.total -= self.total * self.discount/10.to_f
  end
  
end