
class Order
  attr_accessor :order
  
  MENU = ["hotdog","coke", "diet_coke"]
  
  def initialize(*order)
    @order = order
  end
    
  def valid_order?
    if @order != [] do 
    (@order - MENU) == []? true : false
    else
      false 
  end
end


