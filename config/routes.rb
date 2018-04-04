Rails.application.routes.draw do
  root to: 'tests#new'
  resources :users
  resource :session
  resources :tests, only: ['create', 'new']
  resources :test_answers
  get 'take_test/:id', to: 'tests#take_test'
end
