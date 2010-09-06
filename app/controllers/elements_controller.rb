class ElementsController < ApplicationController
  before_filter :get_template
  
  def destroy
    @element_destroy.destroy
    respond_to do |format|
      format.html { render_node_template }
      format.js
    end
  end

  def move
  end


  private
  def get_template
    if params[:id]
      @element_destroy = Element.find(params[:id])
      @node = @element_destroy.template.node
    end
    super
  end

end
