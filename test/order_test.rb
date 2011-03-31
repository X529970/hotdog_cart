
describe Order do
  
  before do
    @order = Order.new
  end
  
    describe "a successful order" do
      it "should check if items ordered are on menu" do
      @order.order = ["hotdog", "coke"]
      @order.check_menu.must_equal "Coming right up."
    end
  end
  
    describe "an unsuccesful order" do
      it "should not contain items not on the menu" do
        @order.order = ["cheezeburger", "coke"]
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