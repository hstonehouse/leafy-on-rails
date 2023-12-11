# frozen_string_literal: true

Rails.application.routes.draw do
  get '*all' => 'application#cors_preflight_check', :constraints => { method: 'OPTIONS' }

  get 'home/index'
  get 'api/plantdirectory', to: 'plant#all'
end
