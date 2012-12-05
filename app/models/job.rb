class Job < ActiveRecord::Base
  attr_accessible :discription, :name
  
    validates :name, :presence => true
    
end
