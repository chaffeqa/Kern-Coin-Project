class Admin::PageElems::LinkElemsController < ApplicationController
  before_filter :get_template

def new
    @element = Element.new(:position => params[:position], :column_order => Element.set_highest_column_order(params[:position]), :title => '', :display_title => true)
    @link_elem = @element.elem=LinkElem.new
  end


  def edit
    @element = @link_elem.element
  end


  def create
    @element = Element.new(:position => params[:position], :column_order => params[:column_order], :title => params[:title], :display_title => params[:display_title])
    @link_elem = @element.elem=LinkElem.new(params[:link_elem])
    if @link_elem.save and @element.save and @node.template.elements << @element
      redirect_to shortcut_path(@node.shortcut, :notice => "Link Element successfully added!")
    else
      render :action => 'new'
    end
  end


  def update
    @element = @link_elem.element
    if @link_elem.update_attributes(params[:link_elem])
      redirect_to shortcut_path(@node.shortcut, :notice => "Link Element successfully updated!")
    else
      render :action => 'edit'
    end
  end

  
  def file
    @link = Link.find(params[:id])
    send_file "#{@link.link_file.path}", :type => @link.link_file_content_type # TODO get x-sendfile => true to work
  end


  private
  def get_template
    if params[:id]
      @link_elem = LinkElem.find(params[:id])
      @node = @link_elem.element.template.node
    end
    super
  end

end
