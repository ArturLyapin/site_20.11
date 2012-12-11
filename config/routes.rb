Site::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :feedbacks, :only=>[:new,:create]
  resources :jobs, :only=>[:index]
  resources :news, :only=>[:index,:show]
  root :to => 'static_pages#about'

end
