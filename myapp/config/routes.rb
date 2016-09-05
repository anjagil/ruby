Rails.application.routes.draw do
  resources :posts
  get 'blog_test/blog_t'

  resources :numbers
  get 'welcome/index'


  get 'say/Hello'
	resources :articles
  root 'welcome#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
