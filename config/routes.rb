Fitlog::Application.routes.draw do
  resources :activities
  resources :resistance_training_activities
  resources :runs
  resources :cycle_rides
  resources :meals
  resources :sleep_periods
  root to: "activities#index"
end
