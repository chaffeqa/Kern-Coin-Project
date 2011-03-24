KernCoinProject::Application.routes.draw do



  root :to => redirect('/Home')

  match "error" => 'shortcut#error', :as => :error

  devise_for :admins

  resources :elements, :only => [:destroy] do
    post :move_up, :on => :member
    post :move_down, :on => :member
  end


  # Questions for 'Contact Us'
  resources :questions, :only => [:new, :create]

  # Ckeditor file browsing


  # Admin Namespace
  namespace "admin" do
    resources :dynamic_pages, :except => [:show]
    resources :menus, :only => [:index] do
      post :sort, :on => :collection
    end
    resources :items do
      post :reset_filters, :on => :collection
    end
    resources :blogs, :except => [:show] do
      resources :posts, :except => [:index]
    end
    resources :categories, :except => [:show] do
      post :move_up, :on => :member
      post :move_down, :on => :member
    end
    resources :questions, :only => [:index, :show, :destroy]
    resources :calendars, :except => [:show] do
      resources :events, :except => [:index]
    end
    scope :module => 'page_elems' do
      resources :login_elems, :only => [:new]
      resources :item_elems, :except => [:index, :show]
      resources :item_list_elems, :except => [:index, :show]
      resources :blog_elems, :except => [:index, :show]
      resources :calendar_elems, :except => [:index, :show]
      resources :text_elems, :except => [:index, :show]
      resources :link_list_elems, :except => [:index] do
        post :send_link_file, :on => :member
      end
    end
  end



  match ':shortcut(/:year(/:month))' => 'shortcut#route', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}
  match 'Inventory/item_list' => 'inventory#list', :as => :inventory_list

#  match '/admin/:controller/:action(/:id)'
  match '/:controller/:action', :constraints => {:controller => 'ckeditor'}
  match ':shortcut' => 'shortcut#route', :as => :shortcut
#  match ':shortcut/:page_area/new_element' => 'dynamic_pages#new_element', :as => :new_element
#  match '/*anything' => 'shortcut#error'


end

