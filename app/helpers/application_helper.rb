module ApplicationHelper
  
  def selected_menu_class(controller)
    'selected' if controller.include? params[:controller]
  end
  
  def current_collection
    Collection.current
  end
  
end
