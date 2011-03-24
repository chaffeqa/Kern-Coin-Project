class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
  helper_method :get_node, :categories_for_items, :get_home_node, :admin?, :expire_cache
  layout 'static_page'

  def categories_for_items(items = Item.all)
    (items.collect {|item| item.categories }).uniq.compact
  end

  def get_home_node
    unless @home_node
      @home_node = Node.home || create_home_node
    end
    @home_node
  rescue ActiveRecord::RecordNotFound
    create_home_node
    return @home_node
  end


  def get_node
    get_home_node
    @shortcut ||= params[:shortcut].blank? ? nil : params[:shortcut]
    @node ||= Node.find_shortcut(@shortcut)
    redirect_to(error_path(:shortcut => @shortcut )) unless @node
    @node
  end

  #TODO
  def admin?
    admin_signed_in?
  end

  def check_admin
    unless admin?
      redirect_to error_path(:message => 'Unauthorized Access')
    end
    expire_cache
  end



  private

  def create_home_node
    home_page = DynamicPage.create(:template_name => 'Home')
    @home_node = home_page.create_node(:menu_name => 'Home', :title => 'Home', :shortcut => 'Home', :displayed => true)
  end

  def expire_cache
    if admin? and !request.get?
      # Expires the cached fragments
      puts "Expiring Cache..."
      expire_fragment(%r{.*\/\d})
      expire_fragment(%r{.*\/index})
      expire_fragment(%r{.*partial})
    end
  end


end

