FactoryGirl.define do
  factory :proposition do
    text { generate :string }
    begin_date { DateTime.now }
    end_date { DateTime.now + 1.month }
  end
end
