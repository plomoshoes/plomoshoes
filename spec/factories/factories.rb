FactoryGirl.define do
  
  factory :collection do
    name 'FALL 2012'
    path 'fall-2012'
    current false
    active true
  end
  
  factory :shoe do
    name 'Agatha'
    detail 'Description test'
    path 'agatha'
    active true
    association :collection, factory: :collection
  end

end
