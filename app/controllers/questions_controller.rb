class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order('created_at DESC')
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.author_id = session[:user_id]
    if @question.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  private
    def question_params
      params.require(:question).permit(:title, :body)
    end

end
