FactoryGirl.define do
  factory :admin, class: 'User' do
    email { generate :email }
    password { generate :string }
    role 'admin'
  end
end
