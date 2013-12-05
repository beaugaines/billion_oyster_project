# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    name "MyString"
    city "MyString"
    lat "9.99"
    lon "9.99"
    user nil
  end
end
