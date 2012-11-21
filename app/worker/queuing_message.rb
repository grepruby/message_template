class QueuingMessage
  @queue = :message_serve

  #Queuing the message and sending the notification via email to the user
  def self.perform(user_id,response,message_template_id)
    user = User.find(user_id)
    message_template = MessageTemplate.find(message_template_id)
    
    UserMailer.email_message(user,message_template,response).deliver
  end
end