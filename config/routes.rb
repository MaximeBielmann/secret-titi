Rails.application.routes.draw do
  root "pages#home"
  
  get "send" => "whispers#new"
  post "whispers" => "whispers#create"
  get "whispers/:id" => "whispers#show"
  get "whispers/:id/link" => "whispers#link"
end
