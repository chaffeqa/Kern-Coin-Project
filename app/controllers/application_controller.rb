class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  helper :all
  helper_method :current_user_session, :current_user, :categories_for_items, :get_home_node, :admin?
  before_filter :side_panels

  def categories_for_items(items = Item.all)
    items.collect {|item| item.category}.uniq
  end

  def get_home_node
    unless @home_node
      @home_node = Node.where(:menu_name => 'Home').first
      if @home_node.nil?
        create_home_node
      end
    end
    @home_node
  rescue ActiveRecord::RecordNotFound
    create_home_node
    return @home_node
  end


  def get_template
    get_home_node
    @node = @node || (Node.where(:shortcut => params[:shortcut]).first if params[:shortcut])
    if @node
      if @node.page_type=='Template'
        @templt = @node.page
        @elements = @templt.elements.elem_order
        @shortcut = @node.shortcut
      end
    end
  end

  #TODO
  def admin?
    true
  end


  
  private

  def create_home_node
    home_page = Template.create!(:template_name => 'Home')
    @home_node = home_page.create_node(:menu_name => 'Home', :title => 'Home', :shortcut => 'home', :displayed => true)
  end

  

  def side_panels
    #    @popular_auctions = Auction.list_by_popularity.limit(5)
    @time = Time.now
    if current_user
      @user = current_user
    else
      @user_session = UserSession.new
    end
  end

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end

  def require_user
    unless current_user
      store_location
      flash[:alert] = "You must be logged in to access this page"
      redirect_to login_url
      return false
    end
  end

  def require_no_user
    if current_user
      store_location
      flash[:alert] = "You must be logged out to access this page"
      redirect_to home_url
      return false
    end
  end

  def store_location
    session[:return_to] = request.env["REQUEST_URI"]
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end
end
