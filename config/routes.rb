PromoSite::Application.routes.draw do
  root :to => 'static_pages#home'

  get  '/about'    => 'static_pages#about'
  get  '/contacts' => 'contact_us#new'
  post '/contacts' => 'contact_us#send_email', as: :contact_us

  resources :services
  resources :news_items, :path => '/news'
  resources :feedbacks do
    member do
      post :approve
    end
  end

  devise_for :users
end
