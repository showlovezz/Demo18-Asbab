Rails.application.routes.draw do
	# 前台網址設計
  root "asbabs#index"

  # 後台網址設計
  namespace :admin do
    root "asbabs#index"
  end
end
