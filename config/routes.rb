Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :decks do
        resources :cards
      end
      post "/decks/new", to: "decks#create"
      get "/decks/:id/deal", to: "decks#show"
    end
  end
  #this closes Rails.application.routes.draw do
end
