FactoryBot.define do

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
