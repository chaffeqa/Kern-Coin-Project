class ElementsController < ApplicationController
  before_filter :check_admin
  before_filter :get_node
  
  def destroy
    @element_destroy.destroy
    respond_to do |format|
      format.html { redirect_to shortcut_path(@node.shortcut) }
      format.js
    end
  end

  def move_up
    @element = Element.find(params[:id])
    @element.move_higher
    redirect_to shortcut_path(@node.shortcut)
  end

  def move_down
    @element = Element.find(params[:id])
    @element.move_lower
    redirect_to shortcut_path(@node.shortcut)
  end


  private
  def get_node
    if params[:id]
      @element_destroy = Element.find(params[:id])
      @node = @element_destroy.dynamic_page.node
    end
    super
  end

end
