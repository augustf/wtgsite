Wtgsite::Application.routes.draw do |map|

	root :to => "frontpage#index"

	map.login "login", :controller => "user_sessions", :action => "new"
	
	map.logout "logout", :controller => "user_sessions", :action => "destroy"

  resources :blog_posts
  
  resources :blog_comments


  resources :user_sessions

  resources :projects
  
  resources :project_photos

  resources :users

  resources :pages

	match 'frontpage' => 'frontpage#index'
	
	match 'blog' => 'blog_posts#index'
	
	match 'about' => 'about#index'
	
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
