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

  describe "When I visit '/spaceshuttles'" do
    it "displays the record in order by most recently created first" do

      visit "/spaceshuttles"

      expect(page).to have_content(@spaceshuttle_1.mission_name)
      expect(page).to have_content(@spaceshuttle_1.created_at)
      expect(page).to have_content(@spaceshuttle_2.mission_name)
      expect(page).to have_content(@spaceshuttle_2.created_at)
      save_and_open_page
      expect(@spaceshuttle_2.mission_name).to appear_before(@spaceshuttle_1.mission_name)
    end

    it "displays next to each of the records I see when it was created" do

      visit "/spaceshuttles"

      
    end
  end
end