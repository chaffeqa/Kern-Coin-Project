class Admin::PageElems::LinksController < ApplicationController
  before_filter :get_template



  def new
    @link = Link.new(:link_type => "Url")
  end


  def edit
    @link = Link.find(params[:id])
  end


  def create
    @link = Link.new(params[:link])
    if @link.save and @link_list_elem.links << @link
      redirect_to( admin_link_list_elem(@link_list_elem, :notice => 'Link was successfully added.'))
    else
      render :action => "new"
    end
  end


  def update
    @link = Link.find(params[:id])
    if @link.update_attributes(params[:link])
      redirect_to( admin_link_list_elem(@link_list_elem, :notice => 'Link was successfully updated.'))
    else
      render :action => "edit"
    end
  end


  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    redirect_to(admin_link_list_elem_path(@link_list_elem), :notice => 'Link was successfully destroyed.')
  end

  
  def file
    @link = Link.find(params[:id])
    send_file "#{@link.link_file.path}", :type => @link.link_file_content_type # TODO get x-sendfile => true to work
  end


  private
  def get_template
    if params[:link_list_elem_id]
      @link_list_elem = LinkListElem.find(params[:link_list_elem_id])
      @node = @link_list_elem.element.template.node
    end
    super
  end

end
