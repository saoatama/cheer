Rails.application.routes.draw do
  root to: "quote#index"
  post "/" => "quote#index"
  get "cocktail" => "cocktail#index"
  post "cocktail/post" => "cocktail#post"
  get "cocktail/post" => "cocktail#post"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
