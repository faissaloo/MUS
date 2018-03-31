Rails.application.routes.draw do
  resource :url
  get "/:code" => "main#redirect"
  root to: "main#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
