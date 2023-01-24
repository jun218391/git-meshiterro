Rails.application.routes.draw do
 
  root to: 'homes#top'
  devise_for :users
  get 'homes/about' => 'homes#about', as: 'about'
  
  resources :post_images,only:[:new, :create, :destroy, :index, :show]
  resources :users,only:[:show, :edit]

end
