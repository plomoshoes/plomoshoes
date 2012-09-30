class PressController < ApplicationController

  def index
    @press_items = PressItem.all
  end
  
end
