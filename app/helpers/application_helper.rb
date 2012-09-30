module ApplicationHelper
  
  def selected_menu_class(controller)
    'selected' if controller.include? params[:controller]
  end
  
  def current_collection
    Collection.current
  end
  
  def asset_url(asset)
    "#{request.protocol}#{request.host_with_port}#{asset_path(asset)}"
  end
  
end
