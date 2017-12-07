Rails.application.routes.draw do

  get 'tags/index'
  get 'tags/show'

  devise_for :users
  get 'welcome/index'
  post 'users/:id/', to: 'users#show'

  resources :users
  resources :tags

  resources :blogs do
    resources :comments
  end

  resources :questions do
      resources :answers do
        member do
          put "like", to: "answers#upvote"
          put "dislike", to: "answers#downvote"
        end
      end
  end

  root 'welcome#index'
end
