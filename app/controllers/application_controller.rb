class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
  helper_method :get_node, :categories_for_items, :get_home_node, :admin?
  before_filter :side_panels
  layout 'static_page'

  def categories_for_items(items = Item.all)
    items.collect {|item| item.node.parent.page unless item.node.nil? }.uniq.compact
  end

  def get_home_node
    unless @home_node
      @home_node = Node.root
      if @home_node.nil?
        create_home_node
      end
    end
    @home_node
  rescue ActiveRecord::RecordNotFound
    create_home_node
    return @home_node
  end


  def get_node
    get_home_node
    @node = @node || (Node.where(:shortcut => params[:shortcut]).first if params[:shortcut])
    if @node
      @shortcut = @node.shortcut
    else
      redirect_to(error_path(:shortcut => params[:shortcut] ))
    end
  end

  #TODO
  def admin?
    true
    #    admin_signed_in?
  end

  def check_admin
    unless admin?
      redirect_to error_path(:message => 'Unauthorized Access')
    end
  end


  
  private

  def create_home_node
    home_page = DynamicPage.create!(:template_name => 'Home')
    @home_node = home_page.create_node(:menu_name => 'Home', :title => 'Home', :shortcut => 'home', :displayed => true)
  end

  

  def side_panels
    #    @popular_auctions = Auction.list_by_popularity.limit(5)
    @time = Time.now
  end

  
end
