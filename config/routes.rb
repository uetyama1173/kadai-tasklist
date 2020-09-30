Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: 'tasks#index'
 
 get 'login', to: 'sessions#new'
 post 'login', to: 'sessions#create'
 delete 'logout', to: 'sessions#destroy'

 
 get 'signup', to: 'users#new'
 resources :tasks
 resources :users, only: [:new, :create]
 
 #ユーザー登録を作成中
 #index 最初の画面 メイン部分
 #show 詳細
 #new 新規登録
 #create 生成
 #マイグレーションをする意味

end
