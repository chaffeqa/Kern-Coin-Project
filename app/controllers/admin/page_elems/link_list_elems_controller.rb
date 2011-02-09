class Admin::PageElems::LinkListElemsController < ApplicationController
  layout 'admin'
  before_filter :get_node, :check_admin


  def new
    @link_list_elem = LinkListElem.new
    @link_list_elem.build_element(:page_area => params[:page_area], :display_title => true)
  end


  def edit
  end


  def create
    @link_list_elem = LinkListElem.new(params[:link_list_elem])
    if @link_list_elem.save and @node.page.elements << @link_list_elem.element
      redirect_to(shortcut_path(@node.shortcut), :notice => "Link List Element successfully added!")
    else
      render :action => 'new'
    end
  end


  def update
    if @link_list_elem.update_attributes(params[:link_list_elem])
      redirect_to(shortcut_path(@node.shortcut), :notice => "Link List Element successfully updated!")
    else
      render :action => 'edit'
    end
  end

  def destroy
    @link_list_elem.destroy
    redirect_to(shortcut_path(@node.shortcut), :notice => 'Element successfully destroyed.')
  end


  private
  def get_node
    if params[:id]
      @link_list_elem = LinkListElem.find(params[:id])
      @node = @link_list_elem.element.dynamic_page.node
    end
    super
  end

end
