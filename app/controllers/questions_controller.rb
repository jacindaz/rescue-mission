class QuestionsController < ApplicationController

  def index
    @title = "Questions to Infinity and Beyond"
    @questions = Question.all
  end

  def new
    @question = Question.new
    @title = "Post a Question"
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to "/questions/#{@question.id}"
    else
      flash[:notice] = "Your question couldn't be saved. Sorry!"
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    @answers = Answer.new
    @title = "#{@question.title}"
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to question_params
    else
      render 'show'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def destroy
  end

  def question_params
    params.require(:question).permit(:title, :description, :answer_id, :user_id)
  end

end
