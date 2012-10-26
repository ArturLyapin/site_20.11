class ConfirLetter < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confir_letter.received.subject
  #
  def admin_received(feedback)
    @feedback = feedback	

	mail(:to => APP_CONFIG["MAIL_ADDRESS"],
         :subject => "Subject1")
  end
	def user_received(feedback)
    @feedback = feedback

	mail(:to => feedback.email,
         :subject => "Subject2")
	end
end
#APP_CONFIG["MAIL_ADDRESS"]
#"railsjedies@gmail.com"
