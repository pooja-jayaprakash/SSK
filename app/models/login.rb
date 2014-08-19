class Login < ActiveRecord::Base
  attr_accessible :name, :password, :salt
end
