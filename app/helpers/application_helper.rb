module ApplicationHelper
  
  def selected_menu_class(controller)
    'selected' if controller.include? params[:controller]
  end
  
  def current_collection
    Collection.current
  end
  
  def current_collection_content_tag
    if current_collection.nil?
      link_tag = link_to 'COLLECTIONS', collections_url
    else
      link_tag = link_to current_collection.name, collection_url(current_collection.path)
    end
    content_tag :li, link_tag, :class => selected_menu_class(['collections', 'shoes'])
  end
  
  def asset_url(asset)
    "#{request.protocol}#{request.host_with_port}#{asset_path(asset)}"
  end
  
end
