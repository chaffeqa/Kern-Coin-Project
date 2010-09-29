class Admin::TemplatesController < ApplicationController
  layout 'admin'
  before_filter :home_form?, :only => [ :edit, :show, :update]

  def index
    @templts = Template.all
  end


  def show
  end


  def new
    @templt = Template.new
    @templt.build_node(:displayed => true)
  end


  def edit
#    @templt = Template.find(params[:id])
    @templt.build_node(:displayed => true) unless @templt.node
  end


  def create
    @templt = Template.new(params[:node])
    if @templt.save
      redirect_to( admin_node_path(@templt), :notice => 'Template was successfully created.')
    else
      render :action => "new"
    end
  end


  def update
#    @templt = Template.find(params[:id])
    if @templt.update_attributes(params[:node])
      redirect_to( admin_node_path(@templt), :notice => 'Template was successfully updated.')
    else
      render :action => "edit"
    end
  end


  def destroy
#    @templt = Template.find(params[:id])
    @templt.destroy
    redirect_to( admin_nodes_url )
  end

  
  def home_form?
    @home_form = false
    @templt = Template.find(params[:id])
    @home_form = true if  @templt and @home_node == @templt.node
    @node = @templt.node
    get_template
  end
end


