Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'web/welcome#index'
  scope module: :web do
    resources :blogs, only: [ :show, :index ]
    resources :pages, only: [] do
      collection do
        get ':slug' => 'pages#show'
      end
    end
    resource :session, only: [:new, :create, :destroy]
    resources :declares, only: [ :create ]
    resources :users, only: [ :create ]
    namespace :admin do
      root to: 'welcome#index'
      resources :pages, except: :show
      resources :cities, except: :show
      resources :blogs, except: :show
      resources :members, except: :show
      resources :users, except: :show
      resources :videos, except: :show
      resources :propositions, except: :show
      resources :banners, except: :show
      resources :advantages, except: :show
      resources :blocks, except: :show
    end
  end
end
