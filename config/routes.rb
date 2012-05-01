Evecalc::Application.routes.draw do
  resources :blueprints

  root :to => 'blueprints#index'
end
