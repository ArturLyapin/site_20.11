class Feedback < ActiveRecord::Base
  attr_accessible :email, :name, :phone_number, :text, :file_path, :file_name
  #attr_accessible :upload_file

  #attr_accessor :file_path_file_name,:file_path_content_type, :file_path_updated_at
  attr_accessor :file_path_file_name
  #AWS S3
  #has_attached_file :upload_file,{
   # :storage => :s3,
   #  :path =>"files/:id",
   #  :s3_protocol => 'https',
   #  :s3_credentials => {
   #   :bucket => "Artur_new_bucket",
   #   :access_key_id => "AKIAIMNDBJERFVKPFAOA",
   #  :secret_access_key => "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"
   # }
  #}                  
                  
               
end
