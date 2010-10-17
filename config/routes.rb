Wtgsite::Application.routes.draw do |map|
  
  resources :blog_categories

  resources :categories

  root :to => "frontpage#index"
	
	match "contact", :to => "contacts#new", :as => "contact"

	match "login", :to => "user_sessions#new", :as => "login"
	
	match "logout", :to => "user_sessions#destroy", :as => "logout"
	
	resources :contacts
	
	resources :blocks
	
	resources :columns do
	  resources :blocks
	end

  resources :blog_posts
  
  resources :blog_comments

  resources :user_sessions

  resources :users

  resources :pages do
    resources :columns
  end

	match 'frontpage' => 'frontpage#index'
	
	match 'blog' => 'blog_posts#index'

end
