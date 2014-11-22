Altur::Application.routes.draw do
  resources :questions
  root "questions#index"
end
