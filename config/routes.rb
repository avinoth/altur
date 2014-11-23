Altur::Application.routes.draw do
  #Nested routes for answers
  resources :questions do
    resources :answers
  end

  root "questions#index"
end
