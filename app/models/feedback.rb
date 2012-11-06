class Feedback < ActiveRecord::Base
  attr_accessible :email, :name, :phone_number, :text, :document4
	
#has_attached_file :document
  attr_accessor :document4_file_name

#  attr_accessor :document_content_type
 # attr_accessor :document_file_size
 # attr_accessor :document_updated_at

	#validates :name,:length=>{:minimum=>3}
	#validates :email,:length=>{:minimum=>3}

end
