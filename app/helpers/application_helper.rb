module ApplicationHelper
  
  def selected_menu_class(controller)
    'selected' if params[:controller] == controller
  end
  
end
