module ShoesHelper
  
  def display_buy_button?
    !@shoe.sold_out? && !@shoe.price.nil?
  end
  
end
