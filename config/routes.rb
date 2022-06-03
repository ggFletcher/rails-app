Rails.application.routes.draw do
  get 'single_pitcher_box_score/index'
  get 'home/index'
  resources :pitcher_pitch_stats
  resources :team_pitcher_stats
  resources :pitcher_box_scores
  
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
