# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Site::Application.initialize!

Site::Application.configure do
config.action_mailer.delivery_method = :smtp
config.action_controller.perform_caching = true
end

ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :user_name  => "lyapinartur@gmail.com",
  :password  => "lis314372",
  :authentication  => :login
}
