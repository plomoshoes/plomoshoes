require 'spec_helper'

describe HomeMainBanner do
  it 'should be by default return home_main_banners in ordering desc ordering' do
    home_main_banner_c = FactoryGirl.create :home_main_banner, :ordering => 3
    home_main_banner_a = FactoryGirl.create :home_main_banner, :ordering => 1
    home_main_banner_b = FactoryGirl.create :home_main_banner, :ordering => 2
    
    home_main_banners = HomeMainBanner.all
    
    home_main_banners[0].should eql home_main_banner_c
    home_main_banners[1].should eql home_main_banner_b
    home_main_banners[2].should eql home_main_banner_a
  end
end
