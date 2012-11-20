class MessageTemplate < ActiveRecord::Base
  attr_accessible :active_from, :active_until, :name, :status,:data
end
