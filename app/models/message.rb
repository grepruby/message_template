class Message < ActiveRecord::Base
  attr_accessible :responses, :user_id, :message_template_id
  

end
