require 'rails_helper'

describe Waypoint do
  before do
    create(:waypoint)
    #build(:waypoint, latitude: 80, longitude: 80, time: '2016-06-02 20:45:00')
  end

  it { is_expected.to validate_presence_of(:latitude) }
  it { is_expected.to validate_presence_of(:longitude) }
  it { is_expected.to validate_presence_of(:time) }

  it { is_expected.to validate_numericality_of(:latitude) }
  it { is_expected.to validate_numericality_of(:latitude).is_less_than_or_equal_to(90) }
  it { is_expected.to validate_numericality_of(:latitude).is_greater_than_or_equal_to(-90) }

  it { is_expected.to validate_numericality_of(:longitude) }
  it { is_expected.to validate_numericality_of(:longitude).is_less_than_or_equal_to(180) }
  it { is_expected.to validate_numericality_of(:longitude).is_greater_than_or_equal_to(-180) }

  context 'when inserting an wrong latitude' do
    let(:latitude) { 90.05 }
    let(:longitude) { -120 }
    let(:time) { '2016-06-02 20:45:00' }
    let(:vehicle) { create(:vehicle, vehicle_id: "HA-3452") }
    let(:wrong_waypoint) do
      build(:waypoint, latitude: latitude, longitude: longitude, time: time)
    end

    it 'does not create a waypoint' do
      expect { wrong_waypoint.save }.not_to change(described_class, :count)
    end
  end
end
