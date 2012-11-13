module FeedbacksHelper
def list_class(link_title)
	@action=params[:action]
	if @action==link_title
		return "selected"
	else
		return
	end		
		
end
end
