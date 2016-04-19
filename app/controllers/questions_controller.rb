class QuestionsController < ApplicationController
 before_action :find_question, only: [:show, :edit, :update]
before_filter :current_user_presence, except: [:index, :show]
before_filter :question_belongs_to_user?, only: [:edit]

  def index
  @questions = Question.limit(20).order("created_at DESC")
  end

  def show
  end

  def edit
  end

def update
if @question.update(question_params)
  redirect_to @question
else
  render 'edit'
end
end

 def new
  @question = Question.new
  end


def create 
@question = Question.new(question_params)
@question.user = current_user
if @question.save
  redirect_to @question
  else
  render 'new' 
end
end

private

def current_user_presence
if current_user == nil
flash[:notice] = "You need to be logged in to do that"
  redirect_to root_path
end
end

def question_belongs_to_user?
if @question.user_id != current_user.id
flash[:notice] = "You can't edit that question"
  redirect_to question_path(params[:id])
end
end

def find_question
@question = Question.find(params[:id])
end

def question_params
params.require(:question).permit(:title, :body)
	end

end
