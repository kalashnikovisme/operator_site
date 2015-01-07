FactoryGirl.define do
  factory :blog do
    title { generate :string }
    body { generate :string }
    #photo { generate :file }
  end
end
