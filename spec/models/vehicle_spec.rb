require 'rails_helper'

describe Vehicle do
  before { create(:vehicle) }

  it { is_expected.to validate_presence_of(:vehicle_id) }
end
