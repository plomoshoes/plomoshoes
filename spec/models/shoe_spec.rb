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
  
  it 'should be by default return shoes in ordering desc and name asc ordering' do
    brunela_shoe = FactoryGirl.create :shoe, :name => 'Brunela', :ordering => 0
    agatha_shoe = FactoryGirl.create :shoe, :name => 'Agatha', :ordering => 0
    cassia_shoe = FactoryGirl.create :shoe, :name => 'Cassia', :ordering => 1
    
    shoes = Shoe.all
    
    shoes[0].should eql cassia_shoe
    shoes[1].should eql agatha_shoe
    shoes[2].should eql brunela_shoe
  end
end
