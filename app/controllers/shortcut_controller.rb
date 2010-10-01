class ShortcutController < ApplicationController
  layout  'pages'
  before_filter :get_node
  
  def route
    get_node
    if @node
      render("#{@node.page_type.tableize.pluralize}/show")
    else
      redirect_to 'error'
    end
  end

  def error
  end

end
