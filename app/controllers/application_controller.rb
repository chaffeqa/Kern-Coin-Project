class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  helper :all
  helper_method :current_user_session, :current_user
  before_filter :side_panels

  private

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
      flash[:important_notice] = "You must be logged in to access this page"
      redirect_to login_url
      return false
    end
  end

  def require_no_user
    if current_user
      store_location
      flash[:important_notice] = "You must be logged out to access this page"
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
