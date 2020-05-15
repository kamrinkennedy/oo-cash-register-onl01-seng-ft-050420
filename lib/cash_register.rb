class CashRegister
  
  attr_accessor :total, :discount, :last_transaction
  
  def initialize(discount = nil)
    self.total = 0 
    self.discount = discount
  end
  
end