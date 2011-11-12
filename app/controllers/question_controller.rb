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

  def modify
    @question = Question.find(params[:id])
  end

  def updateing
    @question = Question.find(params[:id])
    @question.update_attributes(params[:question])

    redirect_to (:action => "index")
  end

  def del
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to (:action => "index")
  end

  def show
    @question = Question.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question }
    end
  end
end
