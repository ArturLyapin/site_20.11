class FeedbackMailer < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedback_mailer.received.subject
  #
  def received(feedback)
    @feedback=feedback

    mail (:to => "lyapinartur@gmail.com",:subject=>"feedback message")
  end
end
