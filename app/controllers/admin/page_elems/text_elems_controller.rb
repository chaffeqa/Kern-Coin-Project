class Admin::PageElems::TextElemsController < ApplicationController
  layout 'admin'
  before_filter :get_node, :check_admin


  def new
    @text_elem = TextElem.new
    @text_elem.build_element(:page_area => params[:page_area], :display_title => true)
  end


  def edit
  end


  def create
    @text_elem = TextElem.new(params[:text_elem])
    if @node.page.elements << @text_elem.element and @text_elem.save
      redirect_to(shortcut_path(@node.shortcut), :notice => "Text Element successfully added!")
    else
      render :action => 'new'  
    end
  end


  def update
    if @text_elem.update_attributes(params[:text_elem]) 
      redirect_to(shortcut_path(@node.shortcut), :notice => "Text Element successfully updated!")
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
      @text_elem = TextElem.find(params[:id])
      @node = @text_elem.element.dynamic_page.node
    end
    super
  end


end
