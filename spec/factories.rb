FactoryBot.define do
  factory :private_message do
    author { "MyString" }
    receiver { "MyString" }
    hidden_content { "MyString" }
  end

  factory :signed_message do
    author { "MyString" }
    receiver { "MyString" }
    content { "MyString" }
    sig { "MyString" }
  end

  factory :message do
    author { "MyString" }
    receiver { "MyString" }
    content { "MyString" }
  end


  factory :post do
    author { "JL1QntMH187oMcrdtYC2Q927pN8ytqqpwzpgXBmEHNL5Jqj2j2" }
    content { "MyContent" }
    sig { "SGV====" }
  end

  factory :field do
    author { "JL1QntMH187oMcrdtYC2Q927pN8ytqqpwzpgXBmEHNL5Jqj2j2" }
    kind   { "Name" }
    content { "Stitch" }
    sig { "SGVsbG8gV29ybGQ=" }
  end

end
