require 'carrierwave/orm/activerecord'
class UserImage < ActiveRecord::Base
  attr_accessible :photo
  mount_uploader :photo, PhotoUploader
  belongs_to :user
end
