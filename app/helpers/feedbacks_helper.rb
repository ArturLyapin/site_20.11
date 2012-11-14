module FeedbacksHelper
def list_class(link_title)
	  controller.action_name == link_title ? " class=selected" : ""
end
end
