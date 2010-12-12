class Admin::PageElems::CalendarElemsController < ApplicationController
  layout 'admin'
  before_filter :get_node, :check_admin


  def new
    @calendar_elem = CalendarElem.new
    @calendar_elem.build_element(:page_area => params[:page_area], :display_title => true)
  end


  def edit
  end


  def create
    @calendar_elem = CalendarElem.new(params[:calendar_elem])
    if  @calendar_elem.save and @node.page.elements << @calendar_elem.element
      redirect_to(shortcut_path(@node.shortcut), :notice => "Calendar Element successfully added!")
    else
      render :action => 'new'
    end
  end


  def update
    if @calendar_elem.update_attributes(params[:calendar_elem])
      redirect_to(shortcut_path(@node.shortcut), :notice => "Calendar Element successfully updated!")
    else
      render :action => 'edit'
    end
  end

  def destroy
    @calendar_elem.destroy
    redirect_to(shortcut_path(@node.shortcut), :notice => 'Element successfully destroyed.')
  end


  private
  def get_node
    if params[:id]
      @calendar_elem = CalendarElem.find(params[:id])
      @node = @calendar_elem.element.dynamic_page.node
    end
    super
  end

end
