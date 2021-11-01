class Contact < ApplicationRecord
  validates_uniqueness_of [:author, :receiver]
end
