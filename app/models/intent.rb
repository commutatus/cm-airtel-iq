class Intent < ApplicationRecord
  belongs_to :user
  has_many :utterances
  has_many :responses
end
