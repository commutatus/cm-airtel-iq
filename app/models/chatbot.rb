class Chatbot < ApplicationRecord

  include CmAdmin::Chatbot

  belongs_to :user
  has_many :intent
end
