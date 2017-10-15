Rails.application.routes.draw do
  resources :category do
    resources :theme do
      resources :comment
    end
  end
  root 'category#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
