Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'home#top'
  get 'todolists/new'
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'

  # ---- 下記1行を追加してください ---- #
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
end
