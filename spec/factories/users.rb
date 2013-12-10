# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "bob##{n}@bop.com" }
    password "password"
    password_confirmation "password"
    confirmed_at Time.now
    trait :admin do
      email "admin@bop.com"
      admin true
    end
    trait :moderator do
      moderator true
    end
  end
end
