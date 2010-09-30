class TemplatesController < ApplicationController
  layout  'pages'
  before_filter :get_template, :except => [:home]
  
  def show
  end

  def home
    @node = @home_node
    get_template
  end

  
  def new_element
    if request.post?
      respond_to do |format|
        format.html { redirect_to(:controller => "admin/page_elems/#{params[:elem_controller]}", :action => 'new', :shortcut => params[:shortcut], :position => params[:position]) }
        format.js { redirect_to(:controller => "admin/page_elems/#{params[:elem_controller]}", :action => 'new', :shortcut => params[:shortcut], :position => params[:position], :format => :js) }
      end
    else
      flash[:alert] = "Error in building a new element."
      redirect_to(:back)
    end 
  end
  

end
