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
    if optional == 1
      @items[:title] = price
    else 
      array = title.split * optional
      array.each {|element| @items[element] = price}
    end 
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
    @items.flatten
  end 
  
  def void_last_transaction
    @items.flatten.delete_at(-1)
  end 
end 
