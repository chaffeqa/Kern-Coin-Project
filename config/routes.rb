KernCoinProject::Application.routes.draw do


  root :to => 'admin/home#index'
  
  
  #  resources :link_list_elems, :except => [:index, :destroy] do
  #    resources :links, :except => [:index, :show, :destroy] do
  #      post :file, :on => :member
  #    end
  #  end
  
  resources :elements, :only => [:destroy] do
    get :move, :on => :member
  end
  #  match 'admin/:shortcut' => 'templates#edit', :as => :admin_shortcut



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

  # Questions for 'Contact Us'
  resources :questions, :only => [:new, :create]
  #
  #
  #
  #  # Home Controller
  #  match "home" => 'home#home', :as => :home
  #  match "legal" => 'home#legal', :as => :legal
  #  match "privacy_policy" => 'home#privacy_policy', :as => :privacy_policy
  #  match "terms_of_use" => 'home#terms_of_use', :as => :terms_of_use
  #  #  match ':shortcut/:position/new_element' => 'templates#new_element', :as => :new_element
  #  match 'inventory' => 'inventory#category'
  #  match 'auctions' => 'inventory#category'
  #  match 'archives' => 'inventory#category'
  #  match 'admin' => 'admin/home#index'
  #
  #  match ':shortcut' => 'templates#show', :as => :shortcut
  #  match 'home/news' => 'news#index', :as => :news
  #  match 'home/news/article/:id' => 'news#article', :as => :news_article


  # Admin Namespace
  namespace "admin" do
    get "home/index", :as => :home
    resources :site_assets, :only => [:create, :index, :destroy]
    resources :nodes
    #    resources :site_text_sections
    resources :items
    resources :posts
    #    resources :users
    resources :categories, :except => [:show]
    resources :questions, :only => [:index, :show, :delete]
    scope :module => 'page_elems' do
      resources :text_elems, :except => [:index, :destroy, :show]
      resources :link_elems, :except => [:index, :destroy] do
        post :file, :on => :member
      end
    end
  end

  
  match '/admin/:controller/:action(/:id)'
  match '/:controller/:action(/:id)'
  match ':shortcut' => 'templates#show', :as => :shortcut
  match ':shortcut/:position/new_element' => 'templates#new_element', :as => :new_element

  #  match 'admin/:shortcut/:position/new_element' => 'templates#new_element', :as => :new_element
  #  match 'admin/:shortcut' => 'templates#edit', :as => :admin_shortcut

  
end
