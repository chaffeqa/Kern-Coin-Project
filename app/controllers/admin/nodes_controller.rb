class Admin::NodesController < ApplicationController
  layout 'admin'
  before_filter :get_home_node
  before_filter :home_form?, :only => [:new, :edit, :create, :update]

  def index
    @nodes = Node.all
  end


  def show
    @node = Node.find(params[:id]) if params[:id]
#    redirect_to shortcut_path(@node.shortcut)
#  rescue URI::InvalidURIError:
#      respond_to do |format|
#      format.html # show.html.erb
#    end
  end


  def new
    @node = Node.new(:displayed => true)
  end


  def edit
    @node = Node.find(params[:id])
  end


  def create
    @node = Node.new(params[:node])
    if @node.save
      redirect_to( admin_node_path(@node), :notice => 'Node was successfully created.')
    else
      render :action => "new"
    end
  end


  def update
    @node = Node.find(params[:id])
    if @node.update_attributes(params[:node])
      redirect_to( admin_node_path(@node), :notice => 'Node was successfully updated.')
    else
      render :action => "edit"
    end
  end


  def destroy
    @node = Node.find(params[:id])
    @node.destroy
    redirect_to( admin_nodes_url )
  end

  
  def home_form?
    @home_form = false
    @home_form = true if params[:id] and @home_node.id == params[:id]
  end
end


