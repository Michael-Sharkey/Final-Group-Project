class WelcomeController < ApplicationController
  def index
    @blogs = Blog.all
    @tag = Tag.new
    @questions = Question.all
    @answers = Answer.all
    @sort_by_answers = @questions.joins(:answers).group("questions.id").count.sort.reverse
    @sort =  Answer.find_by_sql("
      select * from questions
      inner join answers on questions.id = answers.question_id
      group by questions.title
      order by answers.cached_votes_up DESC")
    @blog = Blog.find_by_id(params[:id])
    @user = User.find_by_id(params[:id])
    @question = Question.find_by_id(params[:id])

  end

  def show

  end

  def new

  end

  def create

  end

  def edit
    @question = Question.find_by_id(params[:id])
  end

  def update
  end

  def destroy
  end


  private
  def blog_params
    params.require(:blog).permit(:title, :body, :user_id)
  end
  def question_answer_size(activerecord)
      answer_obj = {}
      activerecord.each do |question|
        answer_obj[question.id] = question.answers.size
      end
      answer_obj
    end

end
