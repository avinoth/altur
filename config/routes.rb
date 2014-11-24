Altur::Application.routes.draw do
  devise_for :users
  #Nested routes for answers
  resources :questions do
    resources :answers
  end

  get 'users/:user', to: 'questions#userview', as: :user

  get '/about', to: 'pages#about'
  root "questions#index"


end
