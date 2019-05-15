Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #read all the tasks
  get 'tasks', to: 'tasks#index', as: :tasks
  get 'tasks/new', to: 'tasks#new', as: :new
  get 'tasks/:id', to: 'tasks#show', as: :task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  post 'tasks', to: 'tasks#create', as: :create

  patch 'tasks/:id', to: 'tasks#update', as: :update



  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
end
