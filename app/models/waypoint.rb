# frozen_string_literal: true

class Waypoint < ApplicationRecord
  validates :latitude, :longitude, :time, presence: true
  validates :latitude, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 50 }
  validates :longitude, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 50 }

  belongs_to :vehicle
end
