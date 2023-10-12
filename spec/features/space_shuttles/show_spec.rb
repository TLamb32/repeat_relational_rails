require "rails_helper"

RSpec.describe "Space Shuttles Show" do
  before :each do
    @spaceshuttle_1 = SpaceShuttle.create(mission_name: "Endeavour", crew: 8, flight_ready: false)
    @spaceshuttle_2 = SpaceShuttle.create(mission_name: "Atlantis", crew: 9, flight_ready: true)
  end

  describe "when a user visits /spaceshuttles/:id" do

    # US 2
    it "will see the shuttle and its attributes" do

      visit "/spaceshuttles/#{@spaceshuttle_1.id}"

      expect(page).to have_content(@spaceshuttle_1.mission_name)
      expect(page).to have_content(@spaceshuttle_1.crew)
      expect(page).to have_content(@spaceshuttle_1.flight_ready)

      expect(page).to_not have_content(@spaceshuttle_2.mission_name)
      
    end
  end
end