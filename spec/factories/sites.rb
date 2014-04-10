# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :site do
    name "MyString"
    account nil
    lat "9.99"
    lon "9.99"
  end
end
