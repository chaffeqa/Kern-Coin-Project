class ShortcutController < ApplicationController
  before_filter :get_node, :only => :route
  
  def route
    if not @node.displayed and not admin?
      error_redirect('The ' + @node.page_type.capitalize + ' you are trying to view is no longer publicly listed.')
    end
    if @node.page_type == 'DynamicPage'
      render("#{@node.page_type.tableize.pluralize}/show", :layout => "dynamic")
    else
      if @node and @node.page_type and @node.page
        render("#{@node.page_type.tableize.pluralize}/show")
      else
        error_redirect
      end
    end
  end

  def home
    get_home_node
    @node = @home_node
    get_node
    if @node.page_type == 'DynamicPage'
      render("#{@node.page_type.tableize.pluralize}/show", :layout => "dynamic")
    else
      if @node and @node.page_type
        render("#{@node.page_type.tableize.pluralize}/show")
      else
        error_redirect
      end
    end
  end

  def error
    @message = params[:message]
    @shortcut = params[:shortcut]
    if @shortcut
      @similar_nodes = Node.displayed.where(["shortcut LIKE ?", "%"+@shortcut+"%"])
    end
    render('error_page/error')
  end

  private

  def error_redirect(message="The page you have requested either has been moved or doesn't exit.")
    shortcut = params[:shortcut].blank? ? nil : params[:shortcut]
    redirect_to(error_path(:message => message, :shortcut => shortcut))
  end

end
