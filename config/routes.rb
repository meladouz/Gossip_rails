Rails.application.routes.draw do
  get 'static', to: "static#index" #page d'accueil
  get 'static/team', to: "static#team"
  get 'static/contact', to: "static#contact"
  get 'static/gossip/:id', to: "static#show_gossip" # page du gossip
  get 'static/autor/:autor', to: "static#show_autor" # page de l'auteur
  get 'welcome/:name', to: "welcome#name" # page secrete

#  articles GET    /articles(.:format)          articles#index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
