class CollectionsController < ApplicationController
  
  def index
    return redirect_to_ecommerce
    @collections = Collection.active.all
  end
  
  def show
    return redirect_to_ecommerce
    @collection = Collection.find_by_path! params[:path]
    @shoes = Shoe.by_collection @collection
  end
  
end
