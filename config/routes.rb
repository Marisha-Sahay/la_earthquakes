Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'pages#home'
  get '/result', to: 'pages#result'
  post '/result', to: 'pages#result'

end
