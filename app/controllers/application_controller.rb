class ApplicationController < ActionController::Base

  protect_from_forgery

	before_filter :set_locale
	#before_filter :authorize
	 
	def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
	end

	def default_url_options(options={})
	  logger.debug "default_url_options is passed options: #{options.inspect}\n"
	  { :locale => I18n.locale }
	end
public
	def authorize
		unless User.find_by_id(session[:user_id])
		redirect_to login_url, :notice=> "Пожалуйста, пройдите авторизацию"
		end
	end

end
