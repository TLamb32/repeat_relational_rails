require "rails_helper"

RSpec.describe SpaceShuttle, type: :model do
  describe "relationships" do
    it {should have_many :astronauts}
  end

  describe "validations" do
    it { should validate_presence_of :mission_name }
    it { should validate_presence_of :crew }
    it { should allow_value(true).for(:flight_ready) }
    it { should allow_value(false).for(:flight_ready) }
  end
end