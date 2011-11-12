class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def newquestion
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    @question.save
    redirect_to (:action => "index")
  end

  
end
