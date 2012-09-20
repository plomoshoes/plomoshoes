require 'spec_helper'

describe Shoe do
  it 'should be by default return only active shoes' do
    shoe_active = FactoryGirl.create :shoe, :active => true
    shoe_non_active = FactoryGirl.create :shoe, :active => false
    
    shoes = Shoe.all
    
    shoes.should have(1).record
    shoes.should include shoe_active
    shoes.should_not include shoe_non_active
  end
  
  it 'should be by default return shoes in name asc ordering' do
    brunela_shoe = FactoryGirl.create :shoe, :name => 'Brunela'
    agatha_shoe = FactoryGirl.create :shoe, :name => 'Agatha'
    cassia_shoe = FactoryGirl.create :shoe, :name => 'Cassia'
    
    shoes = Shoe.all
    
    shoes[0].should eql agatha_shoe
    shoes[1].should eql brunela_shoe
    shoes[2].should eql cassia_shoe
  end
end
