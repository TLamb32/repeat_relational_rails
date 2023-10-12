require "rails_helper"

RSpec.describe Astronaut, type: :model do
  describe "relationships" do
    it {should belong_to :space_shuttle}
  end

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age}
    it { should allow_value(true).for(:specialist) }
    it { should allow_value(false).for(:specialist) }
  end
end