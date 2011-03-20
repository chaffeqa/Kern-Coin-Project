class Admin::PostsController < ApplicationController
  layout 'admin'
  before_filter :check_admin
  before_filter :get_node, :except => [:new, :create]


  def new
    @blog = Blog.find(params[:blog_id])
    @post = @blog.posts.new
    @post.build_node(:displayed => true)
  end


  def edit
  end


  def create
    @blog = Blog.find(params[:blog_id])
    @post = @blog.posts.build(params[:post])
    if @post.save and @blog.node.children << @post.node
      redirect_to( shortcut_path(@post.node.shortcut), :notice => 'Post was successfully created.')
    else
      render :action => "new"
    end
  end


  def update
    if @post.update_attributes(params[:post])
      redirect_to( shortcut_path(@node.shortcut), :notice => 'Post was successfully updated.')
    else
      render :action => "edit"
    end
  end


  def destroy
    @post.destroy
    redirect_to( shortcut_path(@blog.node.shortcut), :notice => 'Post was successfully destroyed' )
  end

  private

  def get_node
    @blog = Blog.find(params[:blog_id])
    @post = Post.find(params[:id])
    @post.build_node(:displayed => true) unless @post.node
    @node = @post.node
    super
  end

end

