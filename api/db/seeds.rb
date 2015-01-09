# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  Member.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    gender: %w(M F).sample,
    dob: Faker::Date.between(70.years.ago, 10.years.ago))
end
