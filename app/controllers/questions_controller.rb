class QuestionsController < ApplicationController


  def new
    @question = Question.new
  end


  def edit
    @question = Question.find(params[:id])
  end


  def create
    @question = Question.new(params[:question])
#    QuestionsMailer.question_submital(@question).deliver
    if @question.save
      redirect_to(new_question_path, :notice => 'Question was successfully Submitted.')
    else
      render :action => "new"
    end
  end

  
  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(params[:question])
      redirect_to(new_question_path, :notice => 'Question was successfully updated.')
    else
      render :action => "edit"
    end
  end

  
end
