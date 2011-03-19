class Admin::QuestionsController < ApplicationController
  helper_method :sort_column, :sort_direction
  layout 'admin'
  before_filter :check_admin

  def index
    @questions = Question.paginate :page => params[:page], :order => (sort_column + " " + sort_direction)
  end

  def show
    @question = Question.find(params[:id])
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to(admin_questions_url, :notice => 'Client messege was successfully destroyed.' )
  end

  private

  def sort_column
    @sort = @sort || params[:sort] || ''
    Question.column_names.include?(@sort) ? @sort : "created_at"
  end

  def sort_direction
    @direction = @direction || params[:direction] || ''
    "ASC DESC".include?(@direction) ? @direction : "ASC"
  end
end

