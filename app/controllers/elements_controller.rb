class ElementsController < ApplicationController
  before_filter :check_admin
  before_filter :get_node
  
  def destroy
    @current_element.destroy
    redirect_to( shortcut_path(@node.shortcut), :notice => 'Element successfully Destroyed')
  end

  def move_up
    @element = Element.find(params[:id])
    @element.move_higher
    redirect_to( shortcut_path(@node.shortcut), :notice => 'Element successfully Moved')
  end

  def move_down
    @element = Element.find(params[:id])
    @element.move_lower
    redirect_to( shortcut_path(@node.shortcut), :notice => 'Element successfully Moved')
  end


  private
  def get_node
    if params[:id]
      @current_element = Element.find(params[:id])
      @node = @current_element.dynamic_page.node
    end
    super
  end

end
