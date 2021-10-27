Rails.application.routes.draw do
  get  '/:author/posts', to: "posts#get"
  post '/:author/posts', to: "posts#create"
end
