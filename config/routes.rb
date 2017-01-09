Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  resources :performances
  resources :perf_makers
  resources :places
  resources :bands

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
