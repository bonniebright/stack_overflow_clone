class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.create(answer_params)
    if @answer.save
      redirect_to question_path(@answer.question_id)
    else
      render 'question_path(@answer.question_id)'
    end
  end


private

  def answer_params
    params.require(:answer).permit(:answer, :user_id, :question_id)
  end
end

