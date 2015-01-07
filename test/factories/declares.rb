FactoryGirl.define do
  factory :declare do
    association :user
    association :proposition
    user_id { User.last ? User.last.id : 1 }
    proposition_id { Proposition.last ? Proposition.last.id : 1  }
  end
end
