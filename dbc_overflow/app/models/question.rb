class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :votes, as: :vote_for
  has_many :responses, as: :response_to
end
