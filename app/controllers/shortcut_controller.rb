class ShortcutController < ApplicationController
  before_filter :get_node, :only => :route
  
  def route
    if @node.page_type == 'DynamicPage'
      render("#{@node.page_type.tableize.pluralize}/show", :layout => "dynamic")
    else
      render("#{@node.page_type.tableize.pluralize}/show")
    end
  end

  def error
    @message = params[:message]
    @shortcut = params[:shortcut]
    if @shortcut
      @similar_nodes = Node.where(["shortcut LIKE ?", "%"+@shortcut+"%"])
    end
    render('error_page/error')
  end

end
