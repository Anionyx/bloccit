Bloccit::Application.routes.draw do
  
  

  devise_for :users

  resource :users, only: [:update]

  resources :topics do
      resources :posts, except: [:index]
      resources :comments, only: [:create, :destroy]
    end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
