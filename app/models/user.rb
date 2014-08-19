class User < ActiveRecord::Base
  attr_accessible :name, :password, :salt
  has_many :messages,dependent: :destroy
  
  def self.signIn(name,password)
    user = User.find_by_name(name)
    if user && user.password == hashedPassword(password, salt) 
      return user
    else 
      return nil
    end
  end
  
  def self.hashedPassword(password, salt)
      return BCrypt::Engine.hash_secret(password, salt)
  end
  
  def self.createUser(name, password)
    user = User.new
    user.name = name
    user.salt = BCrypt::Engine.generate_salt
    user.password = hashedPassword(password, user.salt)
    user.save
    return user
  end
  
end

