FactoryGirl.define do
  factory :member do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    gender "M"
    dob Faker::Date.between(70.years.ago, 10.years.ago)
  end
end
