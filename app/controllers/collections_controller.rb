class CollectionsController < ApplicationController
  
  def index
    @shoes = Shoe.all
  end
  
end
