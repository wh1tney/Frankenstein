class User < ActiveRecord::Base
  validates :email, presence: true
  # validates :email, uniquesness: true

  has_many :questions
  has_many :answers
  has_many :votes
  has_many :responses
end
