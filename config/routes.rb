Rails.application.routes.draw do
  resources :notes

  post '/pick',    to: "notes#pick"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
