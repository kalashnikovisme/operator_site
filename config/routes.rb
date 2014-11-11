Rails.application.routes.draw do
  root to: 'web/welcome#index'
  scope module: :web do
    resource :session, only: [:new, :create, :destroy]
    namespace :admin do
      root to: 'welcome#index'
    end
  end
end
