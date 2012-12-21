class ConfirmationEmail < ActionMailer::Base
  
  require 'open-uri'
  default :from => "from@example.com"
  
 def admin_received(feedback)
    @feedback = feedback
  
    if feedback.file_path.present?
    attachments[@feedback.file_name] =File.read(@feedback.file_path)
     #attachments[@feedback.file_name] =open(@feedback.upload_file.url).read  #AWS S3
    end

  mail(:to => APP_CONFIG["ADMIN_MAIL_ADDRESSES"],
         :subject => "Admin letter")
  end
end