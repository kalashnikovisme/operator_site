FactoryGirl.define do
  factory :admin, class: 'User' do
    email { generate :email }
    password { generate :string }
    role 'admin'
    name { generate :string }
    city { generate :string }
  end
end
