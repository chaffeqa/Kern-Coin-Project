class Admin::CalendarsController < ApplicationController
  layout 'admin'
  before_filter :check_admin
  before_filter :get_node, :except => [:new, :create, :index]

  def index
    get_home_node
    @calendars = Calendar.all
  end


  def new
    get_home_node
    @calendar = Calendar.new
    @calendar.build_node(:displayed => true)
  end


  def edit
    @calendar.build_node(:displayed => true) unless @calendar.node
  end


  def create
    get_home_node
    @calendar = Calendar.new(params[:calendar])
    if Node.calendar_node.children << @calendar.node and @calendar.save
      redirect_to( shortcut_path(@calendar.node.shortcut), :notice => 'Calendar was successfully created.')
    else
      render :action => "new"
    end
  end


  def update
    if @calendar.update_attributes(params[:calendar])
      redirect_to( shortcut_path(@calendar.node.shortcut), :notice => 'Calendar was successfully updated.')
    else
      render :action => "edit"
    end
  end


  def destroy
    @calendar.destroy
    redirect_to( admin_calendar_url )
  end

  private

  def get_node
    @calendar = Calendar.find(params[:id])
    @node = @calendar.node
    super
  end
end
