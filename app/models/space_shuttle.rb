class SpaceShuttle < ApplicationRecord
  has_many :astronauts

  validates_presence_of :mission_name
  validates_presence_of :crew
  validates :flight_ready, inclusion: [true, false]

  def self.sort_by_recently_created
    SpaceShuttle.order(created_at: :desc)
  end
end