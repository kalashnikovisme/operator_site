FactoryGirl.define do
  factory :banner do
    image { generate :file }
    url { generate :url }
  end
end
