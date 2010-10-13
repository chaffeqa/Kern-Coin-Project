class Admin::PageElems::BlogElemsController < ApplicationController
  layout 'admin'
  before_filter :get_node, :check_admin


  def new
    @blog_elem = BlogElem.new
    @blog_elem.build_element(:page_area => params[:page_area], :display_title => true)
  end


  def edit
  end


  def create
    @blog_elem = BlogElem.new(params[:blog_elem])
    if @node.page.elements << @blog_elem.element and @blog_elem.save
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
