FactoryGirl.define do
  factory :post do
    sequence(:title) { |n| "post title #{n}" }
    body              'Just for testing!'
    user
  end
end