class Admin::EventsController < ApplicationController
  layout 'admin'
  before_filter :check_admin
  before_filter :get_node, :except => [:new, :create]
  cache_sweeper :node_sweeper, :only => [:create, :update, :destroy]


  def new
    @calendar = Calendar.find(params[:calendar_id])
    @event = @calendar.events.new
    @event.build_node(:displayed => true)
  end


  def edit
  end


  def create
    @calendar = Calendar.find(params[:calendar_id])
    @event = @calendar.events.build(params[:event])
    if @event.save and @calendar.node.children << @event.node
      redirect_to( shortcut_path(@event.node.shortcut), :notice => 'Event was successfully created.')
    else
      render :action => "new"
    end
  end


  def update
    if @event.update_attributes(params[:event])
      redirect_to( shortcut_path(@node.shortcut), :notice => 'Event was successfully updated.')
    else
      render :action => "edit"
    end
  end


  def destroy
    @event.destroy
    redirect_to( shortcut_path(@calendar.node.shortcut), :notice => 'Event was successfully destroyed' )
  end

  private

  def get_node
    @calendar = Calendar.find(params[:calendar_id])
    @event = Event.find(params[:id])
    @event.build_node(:displayed => true) unless @event.node
    @node = @event.node
    super
  end
end

