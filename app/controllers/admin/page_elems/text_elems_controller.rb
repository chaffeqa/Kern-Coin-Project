class Admin::PageElems::TextElemsController < ApplicationController
  layout 'admin'
  before_filter :get_node, :check_admin


  def new
    @element = Element.new(:position => params[:position], :column_order => Element.set_highest_column_order(params[:position]), :title => '', :display_title => true)
    @text_elem = @element.elem=TextElem.new
  end


  def edit
    @element = @text_elem.element
  end


  def create
    @element = Element.new(:position => params[:position], :column_order => params[:column_order], :title => params[:title], :display_title => params[:display_title])
    @text_elem = @element.elem=TextElem.new(params[:text_elem])
    if @text_elem.save and @element.save and @node.page.elements << @element
      redirect_to(shortcut_path(@node.shortcut), :notice => "Text Element successfully added!")
    else
      render :action => 'new'  
    end
  end


  def update
    @element = @text_elem.element
    if @text_elem.update_attributes(params[:text_elem])
      redirect_to(shortcut_path(@node.shortcut), :notice => "Text Element successfully updated!")
    else
      render :action => 'edit'
    end
  end



  private
  def get_node
    if params[:id]
      @text_elem = TextElem.find(params[:id])
      @node = @text_elem.element.dynamic_page.node
    end
    super
  end


end
