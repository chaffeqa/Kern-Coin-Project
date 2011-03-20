class Admin::BlogsController < ApplicationController
  helper_method :sort_column, :sort_direction
  layout 'admin'
  before_filter :check_admin
  before_filter :get_node, :except => [:new, :create, :index]

  def index
    get_home_node
    @blogs = Blog.paginate :page => params[:page], :order => (sort_column + " " + sort_direction)
  end


  def new
    get_home_node
    @blog = Blog.new
    @blog.build_node(:displayed => true)
  end


  def edit
  end


  def create
    get_home_node
    @blog = Blog.new(params[:blog])
    if @blog.save and Node.blog_node.children << @blog.node
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
    redirect_to( admin_blogs_url, :notice => 'Blog was successfully destroyed.' )
  end

  private

  def get_node
    @blog = Blog.find(params[:id])
    @blog.build_node(:displayed => true) unless @blog.node
    @node = @blog.node
    super
  end


  def sort_column
    @sort = @sort || params[:sort] || ''
    Blog.column_names.include?(@sort) ? @sort : "title"
  end

  def sort_direction
    @direction = @direction || params[:direction] || ''
    "ASC DESC".include?(@direction) ? @direction : "ASC"
  end

end

