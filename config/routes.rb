Rails.application.routes.draw do
  devise_for :admins
  resources :my_forms
  resources :auths
  resources :account_histories
  resources :accounts
  resources :suppliers
  resources :contacts
  get '/blog/my_blog'
  get 'home/web_page'
  get '/contact/Phone_No'
  get 'online_job_support/ROR_Job_support'
  get 'online_job_support/Ruby_cucumber_Job_Support'
  get 'online_training/RubyOnRails'
  get 'online_training/ruby_cucumber'
  get '/online_training/Python'
  get 'online_training/html_css_js'
  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
