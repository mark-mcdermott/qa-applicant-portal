# frozen_string_literal: true

Rails.application.routes.draw do
  get '/api/auth/session', to: 'current_user#index'
  devise_for :users, path: '', path_names: {
    sign_in: 'api/auth/login',
    sign_out: 'api/auth/logout',
    registration: 'api/auth/signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get 'up' => 'rails/health#show', as: :rails_health_check
end
