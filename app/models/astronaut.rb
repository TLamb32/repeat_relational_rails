class Astronaut < ApplicationRecord
  belongs_to :space_shuttle

  validates_presence_of :name
  validates_presence_of :age
  validates :specialist, inclusion: [true, false]
end