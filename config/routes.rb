Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show, :index] do
    resources :posts, only: [:show, :index, :new, :edit]
  end
  resources :posts
  # This gives us access to /authors/:author_id/posts/new, and a new_author_post_path helper.
end
