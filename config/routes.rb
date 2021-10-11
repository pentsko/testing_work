Rails.application.routes.draw do
  get 'messages/:id', to: 'messages#show'
  get '/messages', to: 'messages#create'
end
