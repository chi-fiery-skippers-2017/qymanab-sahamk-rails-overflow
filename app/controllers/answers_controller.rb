class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])

    @answer = @question.answers.new(answer_params)
    @answer.user_id = session[:user_id]
    @answer.save
    redirect_to question_path(@question)
  end

  private
    def answer_params
      params.require(:answer).permit(:body)
    end
end
