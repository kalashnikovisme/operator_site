FactoryGirl.define do
  factory :advantage do
    title { generate :string }
    icon { generate :file }
    text { generate :string }
  end
end
