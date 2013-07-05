Fitlog::Application.routes.draw do
  resources :activities
  resources :resistance_training_activities
  resources :running_activities
  resources :cycling_activities
  resources :meals
  resources :sleep_periods
  root to: "activities#index"
end
