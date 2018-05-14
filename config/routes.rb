Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  resources :cocktails, only: [:new, show, index, create]
  resources: doses, only: [:new, :create]
  # GET "cocktails"  as: cocktail/index
  # GET "cocktail/:id"  as: cocktail/show
  # GET "cocktail/:id/edit" as: cocktail/edit
  # POST "cocktail/:id"     as: cocktail/new
end
