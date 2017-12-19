Rails.application.routes.draw do

  post '/search',     to: 'countries#search'
  get '/:id/countries',   to: 'countries#index'
  post '/countries',      to: 'countries#create'
  delete '/countries',    to: 'countries#destroy'

  get '/:id/competitions',  to: 'competitions#index'
  post '/competitions',     to: 'competitions#create'
  delete '/competitions',   to: 'competitions#destroy'

  get '/:id/events',  to: 'events#index'
  post '/events',     to: 'events#create'
  delete '/events',   to: 'events#destroy'

  post '/login',  to: 'sessions#create'
  post '/signup', to: 'users#create'

  get '/:id/user_countries', to: 'user_countries#index'
  delete '/:id/user_countries', to: 'user_countries#destroy'

  get '/:id/user_competitions', to: 'user_competitions#index'
  delete '/:id/user_competitions', to: 'user_competitions#destroy'

  get '/:id/user_events', to: 'user_events#index'
  delete '/:id/user_events', to: 'user_events#destroy'

end
