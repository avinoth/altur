Altur::Application.routes.draw do
  #Nested routes for answers
  resources :questions do
    resources :answers
  end

  get '/about', to: 'pages#about'
  root "questions#index"


end
