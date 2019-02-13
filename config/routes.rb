Rails.application.routes.draw do
  resources :blogs
  root to: "cocktail#index"
  post "cocktail/post" => "cocktail#post"
  get "cocktail/post" => "cocktail#post"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
