FactoryBot.define do
  factory :vehicle do
    vehicle_id { Faker::Alphanumeric.alphanumeric(6) }
  end
end
