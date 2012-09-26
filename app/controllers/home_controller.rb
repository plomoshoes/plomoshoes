class HomeController < ApplicationController
  
  def index
    render :layout => 'news_aside'
  end
  
end
