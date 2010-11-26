class ShortcutController < ApplicationController
  before_filter :get_node, :only => :route
  
  def route
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

  def error_redirect
    shortcut = params[:shortcut].blank? ? nil : params[:shortcut]
    message = shortcut != '' ? 'We are sorry, there was an internal Site error' : "We are sorry, the page you have requested either has been moved or doesn't exit."
    redirect_to(error_path(:message => message, :shortcut => shortcut))
  end

end
