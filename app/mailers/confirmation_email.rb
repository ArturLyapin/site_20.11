class ConfirmationEmail < ActionMailer::Base
  default :from => "from@example.com"
  
 def admin_received(feedback)
    @feedback = feedback
  
    if feedback.file_path.present?
    attachments[@feedback.file_name] =File.read(@feedback.file_path) #{|f| f.read}
    end

  mail(:to => APP_CONFIG["ADMIN_MAIL_ADDRESSES"],
         :subject => "Admin letter")
  end
end