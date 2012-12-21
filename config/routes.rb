LearningRails::Application.routes.draw do
  resources :chapters, :except => :show do
    resources :pages
  end
  root :to => 'chapters#index'
end
