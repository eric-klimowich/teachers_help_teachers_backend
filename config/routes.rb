Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # resources :users, only: %i[create]
      # post '/login', to: 'auth#create'
      # get '/profile', to: 'users#profile'
      resources :users, :sessions, :grade_levels, :grade_subjects, :lessons, :comments, :favorite_lessons
    end
  end
end
