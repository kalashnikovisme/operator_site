Rails.application.routes.draw do
  root to: 'web/welcome#index'
  scope module: :web do
    resources :pages, only: [] do
      collection do
        get ':slug' => 'pages#show'
      end
    end
    resource :session, only: [:new, :create, :destroy]
    namespace :admin do
      root to: 'welcome#index'
      resources :pages, except: :show
      resources :blogs, except: :show
      resources :videos, except: :show
    end
  end
end
