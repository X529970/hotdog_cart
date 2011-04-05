require 'helper'

  describe Item do
   
    it 'Must have a name that is set on a new instance' do
      name = :dirty_dawg
      item = Item.new name, nil
      item.name.must_equal name    
    end

    it 'Must have a quantity that is set on a new instance' do
      quantity = 3
      item = Item.new nil, quantity
      item.quantity.must_equal quantity
    end
  end
