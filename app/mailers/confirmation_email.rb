class ConfirmationEmail < ActionMailer::Base
  default :from => "from@example.com"
  
 def admin_received(feedback)
    @feedback = feedback
  
    if feedback.document.present?
    file=feedback.document
    attachments[file.original_filename] =File.read(file.path) #{|f| f.read}
    end

  mail(:to => APP_CONFIG["ADMIN_MAIL_ADDRESSES"],
         :subject => "Admin letter")
  end
end