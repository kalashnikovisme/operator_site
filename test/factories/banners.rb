FactoryGirl.define do
  factory :banner do
    image { generate :file }
    url { generate :url }
    text { generate :string }
    text_on_link { generate :string }
  end
end
