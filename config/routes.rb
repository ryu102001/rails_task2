Rails.application.routes.draw do
  #一覧表示画面へのルーティング
  get '/users', to: 'users#index'
  #新規投稿画面へのルーティング
  get '/users/new', to: 'users#new'
  #新規登録を行うためのルーティング
  post '/users', to: 'users#create'
  #編集を行うためのルーティング
  get '/users/:id/edit', to: 'users#edit'
  #編集完了画面へのルーティング
  patch '/users/:id', to: 'users#update'
  #削除を行うためのルーティング
  delete '/users/:id', to: 'users#destroy'
end
