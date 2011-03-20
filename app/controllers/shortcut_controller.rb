class ShortcutController < ApplicationController
  before_filter :check_shortcut, :only => :route
  caches_action :route , :unless => Proc.new { |c| admin? }, :cache_path => Proc.new { |c|c.send(:shortcut_path, @node.id)}

  def route
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

  def error
    @message = params[:message]
    @shortcut = params[:shortcut]
    if @shortcut
      @similar_nodes = Node.displayed.where(["UPPER(shortcut) LIKE UPPER(?)", "%"+@shortcut+"%"])
    end
    render('error_page/error', :format => :html)
  end






  private

  def error_redirect(message="The page you have requested either has been moved or doesn't exit.")
    shortcut = params[:shortcut].blank? ? nil : params[:shortcut]
    redirect_to(error_path(:message => message, :shortcut => shortcut))
  end

  def check_shortcut
    get_node
    # Error for a non-displayed page request
    error_redirect('The ' + @node.page_type.capitalize || 'page' + ' you are trying to view is no longer publicly listed.') if not @node.displayed and not admin?
    error_redirect() unless request.format == :html
  end

end

