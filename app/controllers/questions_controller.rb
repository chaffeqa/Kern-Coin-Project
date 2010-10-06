class QuestionsController < ApplicationController


  def new
    @question = Question.new
  end


  def edit
    @question = Question.find(params[:id])
  end


  def create
    @question = Question.new(params[:question])
#    @question.user = current_user if current_user
    if @question.save
      redirect_to(@question, :notice => 'Question was successfully created.')
    else
      render :action => "new"
    end
  end

  
  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(params[:question])
      redirect_to(@question, :notice => 'Question was successfully updated.')
    else
      render :action => "edit"
    end
  end

  
end
