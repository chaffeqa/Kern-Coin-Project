class Admin::PageElems::ItemElemsController < ApplicationController
  layout 'admin'
  before_filter :get_node, :check_admin


  def new
    @item_elem = ItemElem.new
    @item_elem.build_element(:page_area => params[:page_area], :display_title => true)
  end


  def edit
  end


  def create
    @item_elem = ItemElem.new(params[:item_elem])
    if @item_elem.save and @node.page.elements << @item_elem.element
      redirect_to(shortcut_path(@node.shortcut), :notice => "Item Display Element successfully added!")
    else
      render :action => 'new'
    end
  end


  def update
    if @item_elem.update_attributes(params[:item_elem])
      redirect_to(shortcut_path(@node.shortcut), :notice => "Item Display Element successfully updated!")
    else
      render :action => 'edit'
    end
  end

  def destroy
    @item_elem.destroy
    redirect_to(shortcut_path(@node.shortcut), :notice => 'Element successfully destroyed.')
  end


  private
  def get_node
    if params[:id]
      @item_elem = ItemElem.find(params[:id])
      @node = @item_elem.element.dynamic_page.node
    end
    super
  end

end
