class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @errors = []

    if @question.title.size < 20
      @errors << "Title must be at least 20 characters long"
    end

    if @question.description.size < 50
      @errors << "Description must be at least 50 characters long"
    end

    if @errors.size > 0
      render :new
    else
      @question.save
      redirect_to question_path(@question)
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :description)
  end
end
