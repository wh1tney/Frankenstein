class Response < ActiveRecord::Base
  belongs_to :user
  belongs_to :response_to, :polymorphic => true
  has_many :votes, as :vote_for
end
