FactoryBot.define do
  factory :item do
    shop_id { 1 }
    name { "MyString" }
    description { "MyText" }
    price { 1 }
  end
end
