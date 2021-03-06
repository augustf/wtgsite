Wtgsite::Application.routes.draw do |map|
  
  resources :blog_categories

  resources :categories

  root :to => "frontpage#index"
	
	match "contact", :to => "contacts#new", :as => "contact"

	match "login", :to => "user_sessions#new", :as => "login"
	
	match "logout", :to => "user_sessions#destroy", :as => "logout"
	
	resources :contacts
	
	resources :blocks do
	  member do
	    get :move_block_higher
	    get :move_block_lower
	  end
	end
	
	resources :columns do
	  resources :blocks
	  
	  member do
	    get :move_column_higher
	    get :move_column_lower
	  end
	end

  resources :blog_posts do
    resources :blog_comments, :member => { :moderate => :get }
  end
  
  resources :blog_comments, :member => { :moderate => :get }

  resources :user_sessions

  resources :users

  resources :pages do
    resources :columns
  end

	match 'frontpage' => 'frontpage#index'
	
	resources :blog, :controller => 'blog_posts'

end
