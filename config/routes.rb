Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  Rails.application.routes.draw do
    get 'tasks', to: 'tasks#index'

    get 'tasks/new', to: 'tasks#new', as: :new_task
    post 'tasks', to: 'tasks#create'

    # if task has dynamic portion to it, you need to pass it as an argument ex: "edit_task(@task)"
    get 'tasks/:id', to: 'tasks#show', as: :task

    get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
    patch 'tasks/:id', to: 'tasks#update'

    delete 'tasks/:id', to: 'tasks#destroy'

    resources :restaurants
  end
end
