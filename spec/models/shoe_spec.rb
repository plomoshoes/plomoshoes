require 'spec_helper'

describe Shoe do
  it 'should be return only active shoes of the collection' do
    collection_fall_2012 = FactoryGirl.create :collection, :active => true
    shoe_active = FactoryGirl.create :shoe, :collection => collection_fall_2012, :active => true
    other_shoe_active = FactoryGirl.create :shoe, :collection => collection_fall_2012, :active => true
    other_collection_shoe_active = FactoryGirl.create :shoe, :active => true
    shoe_non_active = FactoryGirl.create :shoe, :collection => collection_fall_2012, :active => false
    
    shoes = Shoe.by_collection(collection_fall_2012)
    
    shoes.should have(2).records
    shoes.should include shoe_active
    shoes.should include other_shoe_active
    shoes.should_not include shoe_non_active
    shoes.should_not include other_collection_shoe_active
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
