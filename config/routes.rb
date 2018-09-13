Rails.application.routes.draw do
  devise_for :users
	# 前台網址設計
  root "asbabs#index"
  resources :products, only: [:index, :show]

  # 後台網址設計
  namespace :admin do
    root "asbabs#index"
    resources :products, except: [:show]
    resources :categories
  end
end
