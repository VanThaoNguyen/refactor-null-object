FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "Theo#{n}" }
    last_name             'Nguyen'
    sequence(:email)      { |n| "theo#{n}@example.com" }
    password              '123123123'
  end
end
