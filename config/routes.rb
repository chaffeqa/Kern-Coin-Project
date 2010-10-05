KernCoinProject::Application.routes.draw do

  root :to => 'templates#home'

  match "error" => 'shortcut#error', :as => :error

  devise_for :admins
  
  resources :elements, :only => [:destroy] do
    get :move, :on => :member
  end
  
  # Auctions Module
  get "auctions/index"
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

  # Archives Controller
  get "archive/index"


  # Admin Namespace
  namespace "admin" do
    get "home/index", :as => :home
    #    resources :site_assets, :only => [:create, :index, :destroy]
    resources :templates, :except => [:show]
    resources :items
    resources :blogs, :except => [:show] do
      resources :posts, :except => [:index]
    end
    resources :categories, :except => [:show]
    resources :questions, :only => [:index, :show, :delete]
    scope :module => 'page_elems' do
      resources :blog_elems, :except => [:index, :destroy, :show]
      resources :text_elems, :except => [:index, :destroy, :show]
      resources :link_elems, :except => [:index, :destroy] do
        post :file, :on => :member
      end
    end
  end

  
  match '/admin/:controller/:action(/:id)'
  match '/:controller/:action(/:id)'
  match ':shortcut' => 'shortcut#route', :as => :shortcut
  match ':shortcut/:position/new_element' => 'templates#new_element', :as => :new_element

  
end
