module FeedbacksHelper
def list_class(link_title)
<<<<<<< HEAD
	@action=params[:action]
	if @action==link_title
		return " class=selected"
	else
		return
	end		
		
=======
	  controller.action_name == link_title ? " class=selected" : ""
>>>>>>> ac552fa482dc1261f5c2d40ca170ac3a5bdb2e02
end
end
