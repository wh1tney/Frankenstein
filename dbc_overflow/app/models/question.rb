class Question < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :score, numericality: true

  belongs_to :user
  has_many :answers
  has_many :votes, as: :vote_for
  has_many :responses, as: :response_to
end
