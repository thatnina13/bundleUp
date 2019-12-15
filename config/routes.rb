# frozen_string_literal: true

Rails.application.routes.draw do
  resources :items, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  get '/items' => 'items#index'
  get '/items/:id' => 'items#show'
  delete '/items' => 'items#destroy'
  post '/items' => 'items#create'
  patch '/items/:id' => 'items#update'

  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
