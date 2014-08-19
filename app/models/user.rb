class User < ActiveRecord::Base
  attr_accessible :name, :password, :salt
  has_many :articles,dependent: :destroy
  def self.signin(name,password)
    user = find_by_name(name)
    if user && user.password == hashedPassword(password,salt) 
      return user
    else 
      return nil
    end
  end
  def hashedPassword(password,salt)
      return BCrypt::Engine.hash_secret(password,salt)
  end
  
end

