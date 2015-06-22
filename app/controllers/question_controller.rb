class QuestionController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = 'Question added.'
      redirect_to '/questions'
    else
      render :new
    end
  end

  def destroy
    flash[:notice] = 'Question deleted.'
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

  def index
    @questions = Question.page(params[:page])
  end

  protected
  def question_params
    params.require(:question).permit(:title, :description)
  end
end
