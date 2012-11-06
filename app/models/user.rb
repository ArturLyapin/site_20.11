class User < ActiveRecord::Base
  attr_accessible :name, :password_digest, :password_confirmation, :password
#validates :name, :presence=> true, :uniqueness=> true
 # has_secure_password
end
