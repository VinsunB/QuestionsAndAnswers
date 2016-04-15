class QuestionsController < ApplicationController
 

  def index
  @questions = Question.limit(10)
  end

  def show
  @question = Question.find(params[:id])
  end

  def edit
  end

 def new
  @question = Question.new
  end

def create 
@question = Question.new(question_params)

end

private

def question_params

	end

end
