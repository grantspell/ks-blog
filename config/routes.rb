Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  resources :posts, param: :slug, :path => "stories"

  root "posts#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
