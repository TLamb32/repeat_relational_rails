require "rails_helper"

RSpec.describe "Space Shuttles Index" do
  before :each do
    @spaceshuttle_1 = SpaceShuttle.create(mission_name: "Endeavour", crew: 8, flight_ready: false)
    @spaceshuttle_2 = SpaceShuttle.create(mission_name: "Atlantis", crew: 9, flight_ready: true)
  end
  describe "when a user visits /spaceshuttles" do
    
    # US 1
    it "can display each spaceshuttle record" do
      
      visit "/spaceshuttles"

      expect(page).to have_content("Space Shuttles")
    end
    # US 1
    it "should display the name of each spaceshuttle" do

      visit "/spaceshuttles"

      expect(page).to have_content(@spaceshuttle_1.mission_name)
      expect(page).to have_content(@spaceshuttle_2.mission_name)
      # save_and_open_page
    end
  end
end