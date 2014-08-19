class UserController < ApplicationController
  def signin 
    name = params[name]
    password = params[password]
    user = User.signin(name,password)
    if user != nil 
      session[:user_id] = user.id
      session[:salt] = user.salt
      session[:name] = user.name
    end
  end
end
