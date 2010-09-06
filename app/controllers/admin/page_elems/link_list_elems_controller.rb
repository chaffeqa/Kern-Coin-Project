class Admin::PageElems::LinkListElemsController < ApplicationController
  before_filter :get_template
  

  def show
  end

  def edit
    @element = @link_list_elem.element
  end

  def new
    @element = Element.new(:position => params[:position], :column_order => Element.set_highest_column_order(params[:position]))
    @link_list_elem = @element.elem = LinkListElem.new
  end

  def create
    @element = Element.new(:position => params[:position], :column_order => params[:column_order])
    @link_list_elem = @element.elem = LinkListElem.new(params[:link_list_elem])
    if @link_list_elem.save and @element.save and @node.template.elements << @element
      redirect_to admin_link_list_elem_path(@link_list_elem)
    else
      render :action => 'new'
    end
  end

  def update
    @element = @link_list_elem.element
    if @link_list_elem.update_attributes(params[:link_list_elem])
      redirect_to admin_link_list_elem(@link_list_elem), :notice => "Link List Element successfully updated."
    else
      render :action => 'edit'
    end
  end


  private
  
  def get_template
    if params[:id]
      @link_list_elem = LinkListElem.find(params[:id])
      @node = @link_list_elem.element.template.node
    end
    super
  end

  
end
