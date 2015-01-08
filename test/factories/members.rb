FactoryGirl.define do
  factory :member do
    user_id 1
    #avatar { generate :file }
    position { generate :string }
  end
end
