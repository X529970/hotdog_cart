
class Order
  attr_accessor :order
  
  MENU = ["hotdog","coke", "diet_coke"]
  
  def initialize(*order)
    @order = order
  end
    
  def valid_order?
    false unless @order.count > 0 
  end
    
  def check_menu
    (@order - MENU) == []? "Coming right up." : "#{(@order - MENU).to_s} is not on the menu, buddy."  
  end
end

jr = Order.new("hotdog")

puts jr.check_menu
