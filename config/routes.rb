Rails.application.routes.draw do

  get  ':user/private_messages', to: "private_messages#get"
  post ':user/private_messages', to: "private_messages#create"

  get  ':user/outbox',           to: "signed_messages#outbox"
  get  ':user/inbox',            to: "signed_messages#inbox"
  post ':user/inbox',            to: "signed_messages#create"
end
