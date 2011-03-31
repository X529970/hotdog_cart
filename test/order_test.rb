
describe Order do
  
  before do
    @order = Order.new
  end
  
    describe "a successful order" do
      it "should check if items ordered are on menu" do
      @order.order = ["hotdog", "coke"]
      @order.valid_order?.must_equal true
    end
  end
end