class Admin::QuestionsController < ApplicationController
  layout 'admin'

  def index
    @questions = Question.order("created_at ASC")
  end

  def show
    @question = Question.find(params[:id])
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to(admin_questions_url)
  end
end
