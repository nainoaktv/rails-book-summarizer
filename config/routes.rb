Rails.application.routes.draw do
  get 'summarize', to: 'summarize#index'
  post 'summarize', to: 'summarize#summarize'
  get 'summarize/results'
  root 'home#index'

  get "up" => "rails/health#show", as: :rails_health_check

end
