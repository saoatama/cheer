Rails.application.routes.draw do
  root to: "cocktail#index"
  get "quote/book" => "quote#index"
  post "quote/book" => "quote#index"
  get "quote/essay" => "quote#essay"
  post "quote/essay" => "quote#essay"
  get "quote/translation" => "quote#translation"
  post "quote/translation" => "quote#translation"
  post "cocktail/post" => "cocktail#post"
  get "cocktail/post" => "cocktail#post"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
