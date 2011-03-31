
class Order
  attr_accessor :order
  
  MENU = ["hotdog","coke", "diet_coke"]
  
  def initialize(*order)
    @order = order
  end
    
  def valid_order?
    (@order - MENU) == []? true : false
  end
end


