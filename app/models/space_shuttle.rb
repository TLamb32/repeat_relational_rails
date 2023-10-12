class SpaceShuttle < ApplicationRecord
  has_many :astronauts

  validates_presence_of :mission_name
  validates_presence_of :crew
  validates :flight_ready, inclusion: [true, false]
end