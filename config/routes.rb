Rails.application.routes.draw do
  get 'performances/index'

  get 'performances/new'

  get 'performances/create'

  get 'performances/show'

  get 'performances/edit'

  get 'performances/update'

  get 'performances/destroy'

  get 'perf_makers/index'

  get 'perf_makers/new'

  get 'perf_makers/create'

  get 'perf_makers/show'

  get 'perf_makers/edit'

  get 'perf_makers/update'

  get 'perf_makers/destroy'

  get 'places/index'

  get 'places/new'

  get 'places/create'

  get 'places/show'

  get 'places/edit'

  get 'places/update'

  get 'places/destroy'

  get 'bands/index'

  get 'bands/new'

  get 'bands/create'

  get 'bands/show'

  get 'bands/edit'

  get 'bands/update'

  get 'bands/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
