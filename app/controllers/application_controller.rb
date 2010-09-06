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
      if @node.template
#        @template = @node.template
        @elements = @node.template.elements.elem_order
        @shortcut = @node.shortcut
      else
        flash[:alert] = "This Page does not have legal template, please choose one."
        redirect_to edit_admin_node_path(@node)
      end
    else
      flash[:alert] = "No Page exists with this name. Please create one."
      redirect_to new_admin_node_path
    end

  end

  #TODO
  def admin?
    true
  end


  def render_node_template(error_message="Error")
    if @node and @template
      render 'templates/edit', :alert => error_message
    else
      redirect_to root_url(), :alert => error_message.to_s
    end
  end


  
  private

  def create_home_node
    @home_node = Node.create!(:menu_name => 'Home', :title => 'Home', :shortcut => 'home', :displayed => true)
    @home_node.create_template(:template_name => 'Home')
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
