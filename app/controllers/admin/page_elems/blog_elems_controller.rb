class Admin::PageElems::BlogElemsController < ApplicationController
  layout 'admin'
  before_filter :get_node, :check_admin


  def new
    @element = Element.new(:position => params[:position], :column_order => Element.set_highest_column_order(params[:position]), :title => '', :display_title => true)
    @blog_elem = @element.elem=BlogElem.new
  end


  def edit
    @element = @blog_elem.element
  end


  def create
    @element = Element.new(:position => params[:position], :column_order => params[:column_order], :title => params[:title], :display_title => params[:display_title])
    @blog_elem = @element.elem=BlogElem.new(params[:blog_elem])
    if @blog_elem.save and @element.save and @node.page.elements << @element
      redirect_to(shortcut_path(@node.shortcut), :notice => "Blog Element successfully added!")
    else
      render :action => 'new'
    end
  end


  def update
    @element = @blog_elem.element
    if @blog_elem.update_attributes(params[:blog_elem]) and @element.update_attributes(:column_order => params[:column_order], :title => params[:title], :display_title => params[:display_title], :position => params[:position])
      redirect_to(shortcut_path(@node.shortcut), :notice => "Blog Element successfully updated!")
    else
      render :action => 'edit'
    end
  end

  def destroy
    @text_elem.destroy
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
