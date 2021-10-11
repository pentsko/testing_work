Rails.application.routes.draw do
  get 'messages/:id', to: 'messages#show'
  post 'messages', to: 'messages#create'
end
