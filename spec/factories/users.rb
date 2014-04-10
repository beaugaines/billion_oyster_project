# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "bob##{n}@bop.com" }
    sequence(:first_name) { |n| "bob##{n}"}
    last_name "dobbs"
    password "password"
    password_confirmation "password"
    confirmed_at Time.now
    trait :admin do
      email "admin@bop.com"
      admin true
    end
    trait :moderator do
      email "moderator@bop.com"
      moderator true
    end
  end
end
