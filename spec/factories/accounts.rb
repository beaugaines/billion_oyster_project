# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    name "Harbor school"
    city "New York"
    lat 48.855982
    lon 2.358463
    association :user, factory: [:user, :moderator]
  end
end
