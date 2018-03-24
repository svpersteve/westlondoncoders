Rails.application.routes.draw do
  root to: 'pages#home'
  resources :slack_invitations, only: %i[new create], path: 'join-slack'
  get '/join-slack', to: 'pages#join_slack', as: 'join_slack'
  get '/information', to: 'pages#information', as: 'information'
end
