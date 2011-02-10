class Admin::PageElems::LoginElemsController < ApplicationController
  layout 'admin'
  before_filter :get_node, :check_admin


  def new
    @element = Element.new(:page_area => params[:page_area], :display_title => true, :elem_type => 'LoginElem', :title => 'Authentication')
    if @node.page.elements << @element and @element.save
      redirect_to(shortcut_path(@node.shortcut), :notice => "Login Element successfully added!")
    else
      redirect_to(shortcut_path(@node.shortcut), :alert => "Login Element failed to be added!")
    end
  end


  def edit
  end


  def create
    @blog_elem = BlogElem.new(params[:blog_elem])
    if @blog_elem.save and  @node.page.elements << @blog_elem.element
      redirect_to(shortcut_path(@node.shortcut), :notice => "Blog Element successfully added!")
    else
      render :action => 'new'
    end
  end


  def update
    if @blog_elem.update_attributes(params[:blog_elem])
      redirect_to(shortcut_path(@node.shortcut), :notice => "Blog Element successfully updated!")
    else
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

end
