# frozen_string_literal: true

class Vehicle < ApplicationRecord
  validates :vehicle_id, presence: true
  validates :vehicle_id, uniqueness: { case_sensitive: false }

  has_many :waypoints, dependent: :destroy
end
