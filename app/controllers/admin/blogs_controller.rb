class Admin::BlogsController < ApplicationController
  before_filter :get_node, :except => [:new, :create, :index]

  def index
    get_home_node
    @blogs = Blog.all
  end


  def new
    get_home_node
    @blog = Blog.new
    @blog.build_node(:displayed => true)
  end


  def edit
    @blog.build_node(:displayed => true) unless @blog.node
  end


  def create
    get_home_node
    @blog = Blog.new(params[:blog])
    if @blog.save
      redirect_to( shortcut_path(@blog.node.shortcut), :notice => 'Blog was successfully created.')
    else
      render :action => "new"
    end
  end


  def update
    if @blog.update_attributes(params[:blog])
      redirect_to( shortcut_path(@blog.node.shortcut), :notice => 'Blog was successfully updated.')
    else
      render :action => "edit"
    end
  end


  def destroy
    @blog.destroy
    redirect_to( admin_blog_url )
  end

  private

  def get_node
    @blog = Blog.find(params[:id])
    @node = @blog.node
    super
  end

end
