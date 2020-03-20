Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'activity#index', as: 'home'
  post '/activity/new' => 'activity#create'
  #post 'logs/new' => 'logs#create'
  resources :activity do
    resources :logs
  end
end
