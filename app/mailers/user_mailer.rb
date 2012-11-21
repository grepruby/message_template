class UserMailer < ActionMailer::Base
  default from: "demo-message-app@example.com"
  
  def email_message(user,message_template,response)
    @user = user
    @message_template  = message_template
    @response = response
    mail(:to => user.email, :subject => "Message From #{current_user.name}")
  end
end
