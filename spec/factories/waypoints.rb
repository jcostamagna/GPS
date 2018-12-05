FactoryBot.define do
  factory :waypoint do
    time { Faker::Time.between(2.days.ago, Time.zone.today, :all) }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    vehicle { create(:vehicle) }
  end
end
