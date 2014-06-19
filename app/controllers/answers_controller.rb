class AnswersController < ApplicationController

  def index
    @answers = Answer.all
    @title = "All Answers"
  end

  # POST /questions/100/answers
  # POST /questions/:question_id/answers
  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answers_params)
    #@answer.question_id = @question
    @answer.question = @question
    #binding.pry

    if @answer.save
      redirect_to "/questions/#{@question.id}"
    else
      flash[:notice] = "I'm sorry, your answer could not be saved"
      redirect_to '/questions'
    end
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def answers_params
    params.require(:answer).permit(:description)
  end

end

