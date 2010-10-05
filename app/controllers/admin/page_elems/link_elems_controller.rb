class Admin::PageElems::LinkElemsController < ApplicationController
  layout 'admin_page'
  before_filter :get_node, :check_admin

  def new
    @element = Element.new(:position => params[:position], :column_order => Element.set_highest_column_order(params[:position]), :title => '', :display_title => true)
    @link_elem = @element.elem=LinkElem.new(:link_type => 'Url')
  end


  def edit
    @element = @link_elem.element
  end


  def create
    @element = Element.new(:position => params[:position], :column_order => params[:column_order], :title => params[:title], :display_title => params[:display_title])
    @link_elem = @element.elem=LinkElem.new(params[:link_elem])
    if  @node.page.elements << @element and @element.save and @link_elem.save
      redirect_to shortcut_path(@node.shortcut), :notice => "Link Element successfully added!"
    else
      render :action => 'new'
    end
  end


  def update
    @element = @link_elem.element
    if @link_elem.update_attributes(params[:link_elem]) and @element.update_attributes(:column_order => params[:column_order], :title => params[:title], :display_title => params[:display_title], :position => params[:position])
      redirect_to shortcut_path(@node.shortcut), :notice => "Link Element successfully updated!"
    else
      render :action => 'edit'
    end
  end

  
  def file
    @link = Link.find(params[:id])
    send_file "#{@link.link_file.path}", :type => @link.link_file_content_type # TODO get x-sendfile => true to work
  end


  private
  def get_node
    if params[:id]
      @link_elem = LinkElem.find(params[:id])
      @node = @link_elem.element.template.node
    end
    super
  end

end
