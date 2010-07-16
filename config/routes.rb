KernCoinProject::Application.routes.draw do |map|
  
  
  root :to => 'home#home'

  # Admin Namespace
  namespace "admin" do
    get "home/index", :as => :home
    resources :items
    resources :pages
    resources :users
    resources :categories, :except => [:show]
    get "sales/view"
    get "sales_reports/view"
  end

  # Home Controller
  match "home" => 'home#home', :as => :home
  # Announcement Controller
  match 'announcements' => 'announcement#announcements', :as => :announcements
  match 'announcement/:id' => 'announcement#announcement', :as => :announcement

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

  # Store Controller
  get 'store/categories', :as => :store_categories
  get 'store/list', :as => :store_list
  match 'store/view/:id' => 'store#view', :as => :store_view
  post 'store/empty_cart', :as => :store_empty_cart
  match 'store/add_to_cart/:id' => 'store#add_to_cart', :as => :store_add_to_cart, :via => 'post'

  #  get "checkout/view_cart"
  #  get "checkout/personal_info"
  #  get "checkout/billing_info"
  #  get "checkout/review_order"
  #  get "checkout/checkout"
end
