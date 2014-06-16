class QuestionsController < ApplicationController

  def index
    @title = "Questions to Infinity and Beyond"
    @questions = Question.all
  end

  def new
    @question = Question.new
    binding.pry
  end

  def create
    binding.pry
    @question = Question.new(question_params)

    if @question.save
      redirect_to "/questions/#{@question.id}"
    else
      flash[:notice] = "Your question couldn't be saved. Sorry!"
      redirect_to '/questions'
    end
  end

  def show
    binding.pry
    @question = Question.find(params[:id])
    @title = "Question #{@question.title}"
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def question_params
    params.require(:question).permit(:title, :description, :answer_id, :user_id)
  end

end
