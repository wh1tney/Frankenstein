class QuestionsController < ApplicationController
  def index

  end
  def new
    @question = Question.new
  end
  def create
    @question = Question.create
  end
  def show
    @question = Question.find(params[:id])
    @user = User.find(@question.user_id)
    render :index
  end
end
