Rails.application.routes.draw do
  get  '/:author/posts', to: "posts#get"
  post '/:author/posts', to: "posts#create"

  get  '/:receiver/inbox',  to: "messages#inbox"
  get  '/:author/outbox',   to: "messages#outbox"
  post '/:author/inbox',    to: "messages#create"
end
