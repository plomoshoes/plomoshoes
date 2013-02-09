class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def subscribe
    begin
      if Rails.env.production?
        h = Hominid::API.new('a776eba7dc2b3d3e79685b36216ea5ba-us5')
        h.list_subscribe('7b6f8f0343', params[:email], {}, 'html', false, true, false, false)
      end
      @feedback_text = 'Ready! You will be informed about all our news.'
    rescue Hominid::APIError => error
      case error.fault_code
        when 502 then
          'This email is invalid.'
        else
          raise error
      end
    end
  end
  
  protected
  
  def redirect_to_ecommerce
    redirect_to 'https://plomoshoes.myshopify.com'
  end
  
end
