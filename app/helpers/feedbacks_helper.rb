module FeedbacksHelper
  
def list_class(link_title,controller_title)
      
      if controller.controller_name == controller_title
        controller.action_name == link_title ? " class=selected" : ""
        else ""
          end
end

end
