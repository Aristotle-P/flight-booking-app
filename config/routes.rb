Rails.application.routes.draw do
  root 'flights#index'
  resources :flights do
    resources :airports
  end
end
