class Admin::PageElems::LinkElemsController < ApplicationController
  layout 'admin'
  before_filter :check_admin, :except => :file
  before_filter :get_node

  def new
    @link_elem = LinkElem.new(:link_type => 'Url')
    @text_elem.build_element(:page_area => params[:page_area], :display_title => true)
  end


  def edit
  end


  def create
    @link_elem = LinkElem.new(params[:link_elem])
    if  @link_elem.save and @node.page.elements << @link_elem.element
      redirect_to shortcut_path(@node.shortcut), :notice => "Link Element successfully added!"
    else
      render :action => 'new'
    end
  end


  def update
    if @link_elem.update_attributes(params[:link_elem])# and @element.update_attributes(:column_order => params[:column_order], :title => params[:title], :display_title => params[:display_title], :position => params[:position])
      redirect_to shortcut_path(@node.shortcut), :notice => "Link Element successfully updated!"
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
      @link_elem = LinkElem.find(params[:id])
      @node = @link_elem.element.dynamic_page.node
    end
    super
  end

end
