LearningRails::Application.routes.draw do

  resources :posts do
    resources :comments
  end


  resources :chapters, :except => :show do
    resources :pages
  end
  root :to => 'chapters#index'
end
