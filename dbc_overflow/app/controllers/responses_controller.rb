class ResponsesController < ApplicationController
  def index
    response_to = find_response_to
    @responses = response_to.responses
  end
  private
  def find_response_to
    case params[:response_to_type]
    when "question"
      Question.find[:response_to_id]
    when "answer"
      Answer.find[:response_to_id]
  end
end
