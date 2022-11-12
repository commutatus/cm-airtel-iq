class User < ApplicationRecord
  include CmAdmin::User
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chatbots
  has_many :intents

  def password_required?
    return false
    super
  end
end
