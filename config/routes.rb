Evecalc::Application.routes.draw do
  resources :blueprints
  resources :items

  root :to => 'blueprints#index'
end
