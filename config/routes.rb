Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/create'
  # get 'users/edit'
  get 'users/update'
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
#   devise_for :users
scope "/admin" do
  resources :users
end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :buys, only: [:create, :index, :new, :show, :edit, :update]

end
