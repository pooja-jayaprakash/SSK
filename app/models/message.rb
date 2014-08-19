class Message < ActiveRecord::Base
  attr_accessible :e_text, :o_text, :user_id
  belongs_to :user
  
  def self.createMessage(message_text, user_id, salt)
    message = Message.new
    message.o_text = message_text
    message_words = message_text.split(" ")
    message.e_text = ""
    message_words.each do |message_word| 
      message.e_text += BCrypt::Engine.hash_secret(message_word, salt) + " "
    end
    message.user_id = user_id 
    message.save
  end
  
  def self.searchMessage(search_text,salt)
    query = BCrypt::Engine.hash_secret(search_text,salt)
    result = Message.where('e_text like ?',"%" + query + "%")
    return result 
  end
  
  def self.listMessage()
    return Message.all
  end
  
end
