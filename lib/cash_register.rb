class CashRegister
  attr_reader :total :discount
  def initialize(discount = 0)
    @total = 0
    @disount = discount
  end 
end 
