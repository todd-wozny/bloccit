class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])

  end
  
  def create
 # #9
     @question = Question.new
     @question.title = params[:question][:title]
     @question.body = params[:question][:body]
     @question.resolved = params[:question][:resolved]
     
      if @question.save
 # #11
       flash[:notice] = "Question was saved."
       redirect_to @question
     else
 # #12
       flash[:error] = "There was an error saving the question. Please try again."
       render :new
     end
     
   end
end
