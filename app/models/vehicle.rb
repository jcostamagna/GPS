class Vehicle < ApplicationRecord
    validates :id, presence: true
    validates :id, uniqueness: { case_sensitive: false }
  
    has_many :waypoints, dependent: :destroy
  end