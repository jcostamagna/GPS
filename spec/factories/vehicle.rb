FactoryBot.define do
  factory :vehicle do
    vehicle_id do
      random_vehicle_id = Faker::Alphanumeric.alphanumeric(6)
      random_vehicle_id = Faker::Alphanumeric.alphanumeric(6) while
                                                    Vehicle.exists?(vehicle_id: random_vehicle_id)
      random_vehicle_id
    end
  end
end
