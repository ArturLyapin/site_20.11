class Feedback < ActiveRecord::Base
  attr_accessible :email, :name, :phone_number, :text, :document

  attr_accessor :document_file_name

end
