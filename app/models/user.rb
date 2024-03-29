class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :name,:password, :password_confirmation, :remember_me, 
    :nickname, :external_ref, :status
  # attr_accessible :title, :body

  has_many :messages
  has_many :user_images
end
