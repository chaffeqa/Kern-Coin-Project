KernCoinProject::Application.routes.draw do
  root :to => 'dynamic_pages#home'

  match "error" => 'shortcut#error', :as => :error

  devise_for :admins
  
  resources :elements, :only => [:destroy] do
    post :move_up, :on => :member
    post :move_down, :on => :member
  end
  
  # Auctions Module
#  get "auctions/index"
  #  scope :module => "auction" do
  #    # CustomerAuctions Controller
  #    match "auctions/categories" => 'customer_auctions#categories', :as => :auctions_categories
  #    match "auctions/list" => 'customer_auctions#list', :as => :auctions_list
  #    match "auctions/view/:id" => 'customer_auctions#view', :as => :auctions_view
  #    # CustomerBid Controller
  #    resource :customer_bid, :only => [:new, :create, :destroy]
  #  end

  # Inventory Controller
#  match 'inventory/category/:id' => 'inventory#category', :as => :inventory_category
  get 'inventory/list', :as => :inventory_list
#  match 'inventory/item/:id' => 'inventory#item', :as => :inventory_item

  # Questions for 'Contact Us'
  resources :questions, :only => [:new, :create]


  # Admin Namespace
  namespace "admin" do
    resources :dynamic_pages, :except => [:show]
    resources :items
    resources :blogs, :except => [:show] do
      resources :posts, :except => [:index]
    end
    resources :categories, :except => [:show] do
      post :move_up, :on => :member
      post :move_down, :on => :member
    end
    resources :questions, :only => [:index, :show, :destroy]
    scope :module => 'page_elems' do
      resources :blog_elems, :except => [:index, :show]
      resources :text_elems, :except => [:index, :show]
      resources :link_elems, :except => [:index] do
        post :file, :on => :member
      end
    end
  end

  
  match '/admin/:controller/:action(/:id)'
  match '/:controller/:action(/:id)'
  match ':shortcut' => 'shortcut#route', :as => :shortcut
  match ':shortcut/:page_area/new_element' => 'dynamic_pages#new_element', :as => :new_element

  
end
