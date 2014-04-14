class AnswersController < ApplicationController

  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
  end

  def create
    @answer = Answer.create(answer_params)
    respond_to do | format |
      format.html { redirect_to question_path(@answer.question) }
      # ^^ used if javascript was inactive
      format.js
    end
  end


private

  def answer_params
    params.require(:answer).permit(:answer, :user_id, :question_id)
  end
end

