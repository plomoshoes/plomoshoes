class ShoesController < ApplicationController

  def show
    @collection = Collection.find_by_path! params[:collection_path]
    @shoe = Shoe.find_by_path! params[:path]
  end
  
end
