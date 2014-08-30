class Answer < ActiveRecord::Base
  validates :content, presence: true
  validates :score, numericality: true

  belongs_to :question
  belongs_to :user
  has_many :responses, as: :response_to
  has_many :votes, as: :vote_for
end
