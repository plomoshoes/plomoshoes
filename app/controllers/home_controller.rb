class HomeController < ApplicationController
  
  def index
    @home_main_banners = HomeMainBanner.all
    render :layout => 'news_aside'
  end
  
end
