Rails.application.routes.draw do
  root "roots#index"
  resources :sites, only: [:index, :new]
  scope "/:user_name" do
    resources :sites, except: [:index, :new]
  end
  resources :posts
  devise_for :users
end
