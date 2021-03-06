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
  
  factory :press_item do
    name "Amor en primera fila"
    description "Tendecias de moda y beleza"
    ordering 0
  end
  
  factory :home_main_banner do
    name "Banner A"
    ordering 0
  end
  
  factory :home_thumb_banner do
    name "Thumb banner A"
    ordering 0
  end

end
