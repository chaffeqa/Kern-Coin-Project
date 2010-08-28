KernCoinProject::Application.routes.draw do |map|

  root :to => 'home#home'

  # Admin Namespace
  namespace "admin" do
    get "home/index", :as => :home
    resources :site_text_sections
    resources :items
    resources :posts
    resources :users
    resources :categories, :except => [:show]
    resources :questions, :only => [:index, :show, :delete]
    #    get "sales/view"
    #    get "sales_reports/view"
  end

  # Home Controller
  match "home" => 'home#home', :as => :home
  # News Controller
  match 'news' => 'news#index', :as => :news
  match 'news/article/:id' => 'news#article', :as => :news_article

  # Profile Controller
  #  get "profile/show"
  #  get "profile/bought_items"
  #  get "profile/won_auctions"
  #  get "profile/bids"
  match "logout" => 'user_sessions#destroy', :as => :logout
  match "login" => 'user_sessions#new', :as => :login
  resource :user_session, :only => [:destroy, :create, :new]

  # Auctions Module
  #  scope :module => "auction" do
  #    # CustomerAuctions Controller
  #    match "auctions/categories" => 'customer_auctions#categories', :as => :auctions_categories
  #    match "auctions/list" => 'customer_auctions#list', :as => :auctions_list
  #    match "auctions/view/:id" => 'customer_auctions#view', :as => :auctions_view
  #    # CustomerBid Controller
  #    resource :customer_bid, :only => [:new, :create, :destroy]
  #  end

  # Inventory Controller
  match 'inventory/category/:id' => 'inventory#category', :as => :inventory_category
  get 'inventory/list', :as => :inventory_list
  match 'inventory/view/:id' => 'inventory#view', :as => :inventory_view
  #  post 'inventory/empty_cart', :as => :inventory_empty_cart
  #  match 'inventory/add_to_cart/:id' => 'inventory#add_to_cart', :as => :inventory_add_to_cart, :via => 'post'

  # Questions for 'Contact Us'
  resources :questions, :only => [:new, :create]

  #  get "checkout/view_cart"
  #  get "checkout/personal_info"
  #  get "checkout/billing_info"
  #  get "checkout/review_order"
  #  get "checkout/checkout"
end
