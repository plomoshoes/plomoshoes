class CollectionsController < ApplicationController
  
  def show
    @collection = Collection.find_by_path! params[:path]
  end
  
end
