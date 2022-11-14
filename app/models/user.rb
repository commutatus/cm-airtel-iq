class User < ApplicationRecord

  include CmAdmin::User

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {
    member: 'member',
    admin: 'admin',
    super_admin: 'super_admin'
  }

  has_many :chatbots
  has_many :intents
end
