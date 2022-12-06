Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # Show all tasks
  root 'tasks#index'
  # root "articles#index"

  get '/tasks', to: 'tasks#index', as: 'tasks'

  # Create new task
  # 1. Display new task form
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # 2. Create new task
  post '/tasks', to: 'tasks#create'

  # Update tasks
  # 1. Display to be updated task
  get '/tasks/:id', to: 'tasks#edit', as: 'edit_task'
  # 2. Update the task
  patch '/tasks/:id', to: 'tasks#update'

  # Find specific tasks with id
  get '/tasks/:id', to: 'tasks#show', as: 'task'

  # Destroy a task
  delete '/tasks/:id', to: 'tasks#destroy'
end
