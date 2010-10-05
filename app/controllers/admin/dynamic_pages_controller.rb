class Admin::DynamicPagesController < ApplicationController
  layout 'admin'
  before_filter :check_admin
  before_filter :home_form?, :only => [ :edit, :update, :destroy]

  def index
    @dynamic_pages = DynamicPage.all
  end


  def new
    get_home_node
    @dynamic_page = DynamicPage.new
    @dynamic_page.build_node(:displayed => true)
  end


  def edit
    @dynamic_page.build_node(:displayed => true) unless @dynamic_page.node
  end


  def create
    get_home_node
    @dynamic_page = DynamicPage.new(params[:dynamic_page])
    if @dynamic_page.save
      redirect_to( admin_dynamic_pages_path(), :notice => 'Page was successfully created.')
    else
      render :action => "new"
    end
  end


  def update
    if @dynamic_page.update_attributes(params[:dynamic_page])
      redirect_to( admin_dynamic_pages_path(), :notice => 'Page was successfully updated.')
    else
      render :action => "edit"
    end
  end


  def destroy
    @dynamic_page.destroy
    redirect_to( admin_dynamic_pages_url )
  end

  
  def home_form?
    @home_form = false
    @dynamic_page = DynamicPage.find(params[:id])
    @node = @dynamic_page.node
    @home_form = true if  @dynamic_page and @home_node == @node
    get_node
  end
end


