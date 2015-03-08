# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :college_registration do |f|
    f.name { Faker::Name.name }
    f.description { Faker::Lorem.sentence }
    f.address { Faker::Lorem.word }
    f.phone { Faker::PhoneNumber.cell_phone }
    f.email { Faker::Internet.email }
    f.college_type { Faker::Name.name }
  end
end
