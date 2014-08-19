class User < ActiveRecord::Base
  attr_accessible :name, :password, :salt
  def self.signin(name,passwaord)
    user = find_by_name(name)
    if user && user.password == hashedPassword(password,salt) 
      return user
    else 
      return false
    end
  end
  def hashedPassword(password,salt)
      return BCrypt::Engine.hash_secret(password,salt)
  end
  
end

