class CashRegister
  attr_reader :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end 
  
  def total=(total)
    @total = total
  end 
  
  def add_item(title, price)
    @total = @total + price.to_f
  end 
end 
