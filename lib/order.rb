
class Order
  attr_accessor :order, :items
  
  MENU = {:hotdog => 2.00, :coke => 1.00, :chips => 1.00}
  
  def initialize(*order) 
    @order = order
    @items = []
  end

  def total_cost
    items.inject(0) do |result, item|
      result += item.quantity * MENU[item.name]
    end  
  end
  
  def valid_order?
    false unless @order.count > 0 
  end
    
  def check_menu
    diff = self.items.collect {|i| i.name } - MENU.keys
    diff == []? "Coming right up." : "#{diff.join(', ').capitalize} is not on the menu, buddy."  
  end
end

jeff = Order.new :hotdog => 2, :coke => 3

puts jeff.total_cost