Rails.application.routes.draw do
  post '/:receiver/inbox', to: "signed_messages#create"
  get  '/:receiver/inbox', to: "signed_messages#inbox"
  get  '/:author/outbox',  to: "signed_messages#outbox"

  get  '/:author/:receiver', to: "private_messages#get"
  post '/:author/:receiver', to: "private_messages#create"
end
