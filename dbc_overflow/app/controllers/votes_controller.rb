class VotesController < ApplicationController
  def upvote
    vote_for = find_vote_for
    cast_vote(vote_for, 1)
    page_question = Question.find(vote_for.question.id)
    redirect_to question_path(page_question)
  end

  def downvote
    vote_for = find_vote_for
    cast_vote(vote_for, -1)
    page_question = Question.find(vote_for.question.id)
    redirect_to question_path(page_question)
  end

  private
  def cast_vote(v_for, v_value)
      v_for.votes.create(
        user_id: session[:user_id],
        vote_value: v_value,
      )
  end

  def find_vote_for
    case params[:vote_for_type]
    when "question"
      Question.find(params[:vote_for_id])
    when "answer"
      Answer.find(params[:vote_for_id])
    when "response"
      Response.find(params[:vote_for_id])
    end
  end
end
