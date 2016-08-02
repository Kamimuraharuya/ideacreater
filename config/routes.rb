Rails.application.routes.draw do
  root "top#index"
  post "/create" => "top#create"
end
