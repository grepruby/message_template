class Message < ActiveRecord::Base
  attr_accessible :responses, :user_id, :message_template_id
  belongs_to :user
  validates :user_id, :message_template_id, :presence => true
end
