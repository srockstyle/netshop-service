FactoryBot.define do
  factory :shop do
    owner_id { 1 }
    name { "MyString" }
    description { "MyText" }
    open { false }
    delete { false }
  end
end
