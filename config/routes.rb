Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :decks do
        resources :cards
      end
      get "/decks/new", to: "decks#show"
      get "/decks/:id", to: "decks#show"
    end
  end
  #this closes Rails.application.routes.draw do
end
