class Intent < ApplicationRecord
  belongs_to :user
  has_many :utterances
end
