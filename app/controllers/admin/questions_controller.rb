class Admin::QuestionsController < ApplicationController
  layout 'admin'
  before_filter :check_admin

  def index
    @questions = Question.paginate :page => params[:page], :order => (params[:order_by].blank? ? 'updated_at DESC' : params[:order_by])
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
