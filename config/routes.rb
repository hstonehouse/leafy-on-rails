# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  get 'api/plantdirectory', to: 'plant#all'
  get 'api/plant/:id', to: 'plant#one'
  get 'api/plantsearch/:query', to: 'plant#search'
end
