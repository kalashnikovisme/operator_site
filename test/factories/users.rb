FactoryGirl.define do
  factory :user do
    email { generate :email }
    password { generate :string }
    name { generate :string }
    city { generate :string }
  end
end
