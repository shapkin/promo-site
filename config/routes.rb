PromoSite::Application.routes.draw do
  root :to => 'static_pages#home'

  match '/about' => 'static_pages#about'
  match '/contacts' => 'static_pages#contacts'
  
  resources :categories
  resources :services
  resources :news_items, :path => '/news'
  resources :feedbacks

  devise_for :users
end