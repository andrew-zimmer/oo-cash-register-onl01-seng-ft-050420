class CashRegister
  
  attr_reader :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @items = {}
  end 
  
  def total=(total)
    @total = total
  end 
  
  def add_item(title, price, optional = 1)
    @items[title] = {price: price, times: optional}
    @total = @total + (price.to_f * optional) 
  end 
  
  def apply_discount
    if @discount > 0
      @total = @total - (@total* (@discount.to_f / 100))
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end 
  
  def items 
    array = []
    @items.each do |key, value|
      array << key.split * value[:times]
    end 
    array.flatten
  end 
  
  def void_last_transaction
    @total = @total - @items[items[-1]][:price]
    if @items[items[-1]][:times].to_i > 1 
      @items[items[-1]][:times] -1 
    else 
      @items.delete(items[-1])
    end 
  end 
end 
