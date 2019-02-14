Rails.application.routes.draw do
  root to: "cocktail#index"
  get "quote" => "quote#index"
  post "quote" => "quote#index"
  post "cocktail/post" => "cocktail#post"
  get "cocktail/post" => "cocktail#post"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
