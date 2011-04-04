require 'helper'

describe Order do
  
  before do
    @order = Order.new
  end

    it 'Must have order items' do
      @order.items.wont_be_nil
    end    
  
    describe "adding order items" do
      it 'Can add an item' do
        item = Item.new :hotdawg, 4
        @order.items << item
        @order.items.index(item).wont_be_nil
      end
    end
    
    describe "Total Cost" do
      before do      
        items = [stub(:name => :hotdog, :quantity => 4), stub( :name => :coke, :quantity => 1)]
      end
  
      it 'Should add all of the item costs' do      
        final_cost = items.inject(0) do |result, item|
          result += item.quantity * Order::MENU[item.name]
        end

        @order.items = items
        @order.total_cost.must_equal final_cost
      end
    end
    
    describe "a successful order" do
      it "should check if items ordered are on menu" do
      @order.items = [Item.new(:hotdog, 0), Item.new(:coke, 0)]
      @order.check_menu.must_equal "Coming right up."
    end
  end
  
    describe "an unsuccesful order" do
      it "should not contain items not on the menu" do
        @order.items = [Item.new(:cheeseburger, 0)]
        @order.check_menu.wont_equal "Coming right up."
      end 
    end    
     
    describe "an empty order" do
      it "should not be blank" do
      @order.order = []
      @order.valid_order?.must_equal false
    end
  end
end