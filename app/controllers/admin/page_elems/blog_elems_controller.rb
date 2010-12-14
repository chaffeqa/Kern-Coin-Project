class Admin::PageElems::BlogElemsController < ApplicationController
  layout 'admin'
  before_filter :get_node, :check_admin


  def new
    @blog_elem = BlogElem.new
    @blog_elem.build_element(:page_area => params[:page_area], :display_title => true)
    @blog_elem.build_blog
    @blog_elem.blog.build_node
    get_available_blogs
  end


  def edit
    get_available_blogs
  end


  def create
    @blog_elem = BlogElem.new(params[:blog_elem])
    @blog_elem.element.title = @blog_elem.blog.node.title
    @blog_elem.blog.title = @blog_elem.blog.node.title
    if @blog_elem.save and @node.page.elements << @blog_elem.element and Node.blog_node.children << @blog_elem.blog.node
      redirect_to(shortcut_path(@node.shortcut), :notice => "Blog Element successfully added!")
    else
    get_available_blogs
      render :action => 'new'
    end
  end


  def update
    params[:blog_elem][:blog_ids] ||= []
    if @blog_elem.update_attributes(params[:blog_elem])
      redirect_to(shortcut_path(@node.shortcut), :notice => "Blog Element successfully updated!")
    else
    get_available_blogs
      render :action => 'edit'
    end
  end

  def destroy
    @blog_elem.destroy
    redirect_to(shortcut_path(@node.shortcut), :notice => 'Element successfully destroyed.')
  end


  private
  def get_node
    if params[:id]
      @blog_elem = BlogElem.find(params[:id])
      @node = @blog_elem.element.dynamic_page.node
    end
    super
  end

  def get_available_blogs
    @available_blogs = Blog.all - [@blog_elem.blog]
  end

end
