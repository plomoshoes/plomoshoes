require 'spec_helper'

describe Collection do
  it 'should be by default return only active collections' do
    collection_active = FactoryGirl.create :collection, :active => true
    collection_non_active = FactoryGirl.create :collection, :active => false
    
    collections = Collection.all
    
    collections.should have(1).record
    collections.should include collection_active
    collections.should_not include collection_non_active
  end
  
  it 'should return the current collection' do
    collection_current = FactoryGirl.create :collection, :current => true
    collection_non_current = FactoryGirl.create :collection, :current => false
    
    collection = Collection.current
    
    collection.should eql collection_current
    collection.should_not eql collection_non_current
  end
end
