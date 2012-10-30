class Feedback < ActiveRecord::Base
  attr_accessible :email, :name, :phone_number, :text, :document
	
	validates :name,:length=>{:minimum=>3}
	validates :email,:length=>{:minimum=>3}

end
