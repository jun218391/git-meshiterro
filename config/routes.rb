Rails.application.routes.draw do
 
  devise_for :users
  root to: 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  
  resources :post_images,only:[:new, :create, :destroy, :index, :show]do
    resources :post_comments, only:[:create, :destroy]
  end
  resources :users,only:[:show, :edit, :update]

end
