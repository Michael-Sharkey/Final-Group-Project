class AnswersController < ApplicationController
  def show
    @question = Question.find_by_id(params[:id])
  end

  def new
  end

  def create
    @question = Question.find_by_id(params[:question_id])
    @answer= @question.answers.new(answer_params)
    @answer.votes = 0
    @answer.user_id = current_user.id

    if @answer.save
      redirect_to questions_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def upvote
    @answer = Answer.find(params[:id])
    @answer.upvote_by current_user redirect_to questions_path
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end

end
