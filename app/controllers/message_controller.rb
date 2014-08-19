class MessageController < ApplicationController

  def createMessage
    message = Message.createMessage(params[:message][:msg_text], session[:user_id], session[:salt])
    respond_to do |format|
      format.json { render json: message, status: :ok }
    end
  end
  
  def search
    messages = Message.searchMessage(params[:query], session[:salt])
    respond_to do |format|
      format.json { render json: messages, status: :ok }
    end    
  end
  
  def list
    messages = Message.listMessage()
    respond_to do |format|
      format.json { render json: messages, status: :ok }
    end    
  end

end
