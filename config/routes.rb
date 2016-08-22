 Rails.application.routes.draw do

  root 'pages#index'
  get '/about' => 'pages#about'
  get '/courses' => 'courses#index'
  get '/courses/:slug' => 'courses#show', as: 'course'
  get '/courses/:slug_course/episodes/:slug_episode' => 'episodes#show', as: 'episode'

  devise_for :users

  namespace :admin do
    resources :courses, :episodes
    root to: "courses#index"
  end

end
