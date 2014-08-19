class Message < ActiveRecord::Base
  attr_accessible :e_text, :o_text, :user_id
  def self.createMessage(message_text,user)
    message = Message.new
    message.o_text = message_text
    message_words = message_text.split(" ")
    message.e_text = ""
    message_words.each do |message_word| 
      message.e_text += BCrypt::Engine.hash_secret(message_word,user.salt)+" "
    end
    message.user_id = user.id 
    message.save
  end
  
end
