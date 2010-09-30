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
    admin_signed_in?
  end


  
  private

  def create_home_node
    home_page = Template.create!(:template_name => 'Home')
    @home_node = home_page.create_node(:menu_name => 'Home', :title => 'Home', :shortcut => 'home', :displayed => true)
  end

  

  def side_panels
    #    @popular_auctions = Auction.list_by_popularity.limit(5)
    @time = Time.now
  end

  
end
