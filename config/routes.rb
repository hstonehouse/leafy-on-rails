# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  get 'api/plantdirectory', to: 'plants#all'
  get 'api/plant/:id', to: 'plants#one'
  get 'api/plantsearch/:query', to: 'plants#search'
end
