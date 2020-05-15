class CashRegister
  
  attr_accessor :total, :discount, :last_transaction, :current_transaction
  
  def initialize(discount = nil)
    self.total = 0
    self.discount = discount
  end
  
  def add_item(name, price, quantity = 1)
    self.total += price.to_f * quantity
  end
  
  def apply_discount
    self.total -= discount.to_f
    "After the discount, the total comes to $#{self.total}."
  end
  
end