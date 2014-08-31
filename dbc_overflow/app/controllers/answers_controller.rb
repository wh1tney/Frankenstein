class AnswersController < ActionController::Base
  respond_to :html, :js

  def index
  end

  def new
    @answer = Answer.new
  end

  def create
    question = Question.find(params[:id])
    @answer = Answer.create(content: params[:content])
    question.answers << @answer
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end
end
