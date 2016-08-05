Rails.application.routes.draw do
  root "top#show"
  post "/create" => "top#create"
  get"/index"=> "top#index" 
  get"/slot"=> "top#slot"
end

