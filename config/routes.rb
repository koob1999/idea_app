Rails.application.routes.draw do
  post "posts/login" => "posts#login"
  get "posts/login_form" => "posts#login_form"
  post "posts/logout" => "posts#logout"
  get "posts/new_user_form" => "posts#new_user_form"
  post "posts/new_user" => "posts#new_user"

  get ":parent_id/children" => "ideas#children"
  get ":parent_id/children/like" => "ideas#children_like"
  post "ideas/:parent_id/new" => "ideas#new"
  post "ideas/new_parent" => "ideas#new_parent"
  get "/" => "ideas#parents"
  get "/like" => "ideas#parents_like"

  post "likes/:idea_id/parent_like" => "likes#parent_like"
  post "likes/:idea_id/child_like" => "likes#child_like"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
