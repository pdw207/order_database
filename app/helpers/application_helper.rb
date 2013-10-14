module ApplicationHelper

  def visited_class(controller)
    if params[:controller] == controller
      return "active"
    else
      return ""
    end
  end

end
