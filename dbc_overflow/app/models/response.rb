class Response < ActiveRecord::Base
  validates	:content, presence: true

  belongs_to :user
  belongs_to :response_to, :polymorphic => true
  has_many :votes, as: :vote_for

  def owner
    return response_to.title if response_to.is_a? Question
    return "An Answer" if response_to.class.is_a? Answer
  end
end
