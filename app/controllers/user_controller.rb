class UserController < ApplicationController
  
  def signin 
    name = params[:name]
    password = params[:password]
    user = User.signIn(name,password)
    if user != nil 
      session[:user_id] = user.id
      session[:salt] = user.salt
      session[:name] = user.name
      respond_to do |format|
        format.json { render json: user, status: :ok }
      end
    end
  end
  
  def createUser
    name = params[:name]
    password = params[:password]
    user = User.createUser(name, password)
    if user != nil 
      session[:user_id] = user.id
      session[:salt] = user.salt
      session[:name] = user.name
      respond_to do |format|
        format.json { render json: user, status: :ok }
      end
    end
  end
end
