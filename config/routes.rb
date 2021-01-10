Rails.application.routes.draw do


namespace :api do 
  namespace :v1 do
  resources :roses do
  resources :gardens
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
end 
end 

end 

fetch('http://localhost:3000/api/v1/roses')