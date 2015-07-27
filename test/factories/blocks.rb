FactoryGirl.define do
  factory :block do
    title { generate :string }
    text { generate :string }
    order_number { generate :integer }
  end
end
