Movies::Application.routes.draw do
  root :to => "movies#index"
  resources :movies do
    get :remove, :on => :member
  end
end
