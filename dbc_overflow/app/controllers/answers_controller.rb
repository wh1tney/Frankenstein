class AnswersController < ActionController::Base
  respond_to :html, :js

  def index
  end

  def new
    @answer = Answer.new
  end

  def create
    answer = Answer.create(answer_params)
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end
end
