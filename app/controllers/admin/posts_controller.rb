class Admin::PostsController < ApplicationController
  # before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user


  def index
    @posts = Post.all
  end


  def show
    @post = Post.find(params[:id])
  end


  def new
    @post = Post.new
  end


  def edit
    @post = Post.find(params[:id])
  end


  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to(admin_post_path(@post), :notice => 'Post was successfully created.')
    else
      render :action => "new"
    end
  end


  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to(admin_post_path(@post), :notice => 'Post was successfully updated.')
    else
      render :action => "edit"
    end
  end


  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to(admin_posts_url)
  end
end
