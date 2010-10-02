class ElementsController < ApplicationController
  before_filter :get_node
  
  def destroy
    @element_destroy.destroy
    respond_to do |format|
      format.html { redirect_to shortcut_path(@node.shortcut) }
      format.js
    end
  end

  def move
  end


  private
  def get_node
    if params[:id]
      @element_destroy = Element.find(params[:id])
      @node = @element_destroy.template.node
    end
    super
  end

end
