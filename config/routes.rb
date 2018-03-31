Rails.application.routes.draw do
  resource :url
  get "/:code" => "main#redirect"
  match "/shorten", to: "urls#new", via: :post
  root to: "main#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
