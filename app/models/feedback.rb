class Feedback < ActiveRecord::Base
  attr_accessible :email, :name, :phone_number, :text, :file_path, :file_name

  #attr_accessor :document_file_name



end
