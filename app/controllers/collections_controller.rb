class CollectionsController < ApplicationController
  
  def index
    @collections = Collection.active.all
  end
  
  def show
    @collection = Collection.find_by_path! params[:path]
    @shoes = Shoe.by_collection @collection
  end
  
end
