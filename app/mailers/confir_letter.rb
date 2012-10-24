class ConfirLetter < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confir_letter.received.subject
  #
  def received(feedback)
    @greeting = feedback

    mail :to =>"lyapinartut@gmail.ru"
  end
end
