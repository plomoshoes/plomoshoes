require 'spec_helper'

describe HomeThumbBanner do
  it 'should be by default return home_thumb_banners in ordering desc ordering' do
    home_thumb_banner_c = FactoryGirl.create :home_thumb_banner, :ordering => 3
    home_thumb_banner_a = FactoryGirl.create :home_thumb_banner, :ordering => 1
    home_thumb_banner_b = FactoryGirl.create :home_thumb_banner, :ordering => 2
    
    home_thumb_banners = HomeThumbBanner.all
    
    home_thumb_banners[0].should eql home_thumb_banner_c
    home_thumb_banners[1].should eql home_thumb_banner_b
    home_thumb_banners[2].should eql home_thumb_banner_a
  end
end
