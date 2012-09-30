require 'spec_helper'

describe PressItem do
  it 'should be by default return press_items in ordering desc ordering' do
    press_item_c = FactoryGirl.create :press_item, :ordering => 3
    press_item_a = FactoryGirl.create :press_item, :ordering => 1
    press_item_b = FactoryGirl.create :press_item, :ordering => 2
    
    press_items = PressItem.all
    
    press_items[0].should eql press_item_c
    press_items[1].should eql press_item_b
    press_items[2].should eql press_item_a
  end
end
