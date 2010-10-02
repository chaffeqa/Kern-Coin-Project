class Admin::TemplatesController < ApplicationController
  layout 'admin'
  before_filter :home_form?, :only => [ :edit, :update]

  def index
    @templts = Template.all
  end


  def new
    @templt = Template.new
    @templt.build_node(:displayed => true)
  end


  def edit
    @templt.build_node(:displayed => true) unless @templt.node
  end


  def create
    @templt = Template.new(params[:node])
    if @templt.save
      redirect_to( admin_templates_path(@templt), :notice => 'Template was successfully created.')
    else
      render :action => "new"
    end
  end


  def update
    if @templt.update_attributes(params[:node])
      redirect_to( admin_templates_path(@templt), :notice => 'Template was successfully updated.')
    else
      render :action => "edit"
    end
  end


  def destroy
    @templt.destroy
    redirect_to( admin_templates_url )
  end

  
  def home_form?
    @home_form = false
    @templt = Template.find(params[:id])
    @node = @templt.node
    @home_form = true if  @templt and @home_node == @node
    get_node
  end
end


