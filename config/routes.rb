Rails.application.routes.draw do
  get     '/u/:user',               to: "user#all"

  get     '/m/:user',               to: "private_messages#all"

  get     ':user/private_messages', to: "private_messages#get"
  post    ':user/private_messages', to: "private_messages#create"

  get     ':user/contacts',         to: "contacts#get"
  post    ':user/contacts',         to: "contacts#create"
  delete  ':user/contacts',         to: "contacts#delete"

  get     ':user/outbox',           to: "signed_messages#outbox"
  get     ':user/inbox',            to: "signed_messages#inbox"
  post    ':user/inbox',            to: "signed_messages#create"
end
