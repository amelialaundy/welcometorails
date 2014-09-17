# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "amelia"
    email "test@example.com"
    password "password"
  end
end
