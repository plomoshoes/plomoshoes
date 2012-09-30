class HomeController < ApplicationController
  
  def index
    @home_main_banners = HomeMainBanner.all
    @home_thumb_banners = HomeThumbBanner.all
    render :layout => 'news_aside'
  end
  
end
