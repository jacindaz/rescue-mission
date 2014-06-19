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
    @title = "Edit a Question"
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
    @answers = Question.find(params[:id])
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to question_params
    end
    render 'show'
  end

  def edit
    @title = "Edit a Question"
    @question = Question.find(params[:id])
  end

  def destroy
    Question.destroy(params[:id])
    redirect_to questions_path, :notice => "You have deleted this question."
  end

  private

  def question_params
    params.require(:question).permit(:title, :description, :answer_id, :user_id)
  end

end
