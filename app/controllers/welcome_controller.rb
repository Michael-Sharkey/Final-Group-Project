class WelcomeController < ApplicationController
  def index
    @blogs = Blog.all
    @tag = Tag.new
    @questions = Question.all
  end

  def edit
    @question = Question.find_by_id(params[:id])
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :body, :user_id)
  end

end
