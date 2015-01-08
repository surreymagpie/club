FactoryGirl.define do
  factory :member do
    first_name "John"
    last_name  "Doe"
    gender "M"
    dob { 20.years.ago }
  end
end