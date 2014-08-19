class UserController < ApplicationController
  
  def signIn 
    name = params[:user][:name]
    password = params[:user][:password]
    type = params[:user][:type]
    if type == "signin"
      user = User.signIn(name, password)
    else
      user = User.createUser(name, password)
    end
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
