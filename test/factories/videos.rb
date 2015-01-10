FactoryGirl.define do
  factory :video do
    link { generate :url }
    title { generate :string }
    description { generate :string }
  end
end
