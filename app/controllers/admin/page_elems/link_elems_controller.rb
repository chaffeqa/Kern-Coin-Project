class Admin::PageElems::LinkElemsController < ApplicationController
  layout 'admin'
  before_filter :get_node, :check_admin

  def new
    @link_elem = LinkElem.new(:link_type => 'Url')
    @text_elem.build_element(:page_area => params[:page_area], :display_title => true)
  end


  def edit
  end


  def create
    @link_elem = LinkElem.new(params[:link_elem])
    if @node.page.elements << @link_elem.element and @link_elem.save
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

  
  def file
    @link = Link.find(params[:id])
    send_file "#{@link.link_file.path}", :type => @link.link_file_content_type # TODO get x-sendfile => true to work
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
