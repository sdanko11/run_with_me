# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
   sequence(:email) { |n| "person#{n}@example.com" } 
   first_name "Steve"
   last_name "Danko"
   password "steved11"
   distance_per_week 30
   average_pace_minute 6
   average_pace_second 01
   time_running 6
  end
end