class Feedback < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone_number, :text
	validates :email,:uniqueness=>true
	validates :name,:length=>{:minimum=>3}
	validates :address,:length=>{:minimum=>4}
end
