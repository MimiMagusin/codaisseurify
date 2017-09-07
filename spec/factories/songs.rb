FactoryGirl.define do
  factory :song do
        first_name  { Faker::Name.title }
        last_name   { Faker::Integer.release_year }
      end
end
