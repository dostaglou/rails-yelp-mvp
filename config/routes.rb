Rails.application.routes.draw do
  get 'review/new'
  get 'review/create'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

end
