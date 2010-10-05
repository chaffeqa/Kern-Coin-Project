class ShortcutController < ApplicationController
  
  def route
    get_node
    if @node.page_type == 'Template'
      render("#{@node.page_type.tableize.pluralize}/show", :layout => "dynamic_page")
    else
      render("#{@node.page_type.tableize.pluralize}/show")
    end
  end

  def error
    @message = params[:message]
    @shortcut = params[:shortcut]
    if @shortcut
      @similar_nodes = Node.where(["shortcut LIKE ?", @shortcut])
    end
  end

end
