Rails.application.routes.draw do
  root to: 'pages#home'
  resources :slack_invitations, only: %i[new create], path: 'join-slack'
end
