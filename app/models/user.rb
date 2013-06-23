class User < ActiveRecord::Base
  attr_accessible :admin, :email, :password, :password_confirmation
  has_many :adverts
  has_secure_password

end
