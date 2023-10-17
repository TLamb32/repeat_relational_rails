require "rails_helper"

RSpec.describe "Space Shuttles Show" do
  before :each do
    @spaceshuttle_1 = SpaceShuttle.create(mission_name: "Endeavour", crew: 8, flight_ready: false)
    @spaceshuttle_2 = SpaceShuttle.create(mission_name: "Atlantis", crew: 9, flight_ready: true)

    @astronaut1 = @spaceshuttle_1.astronauts.create!(name: "Buzz Aldrin", age: 45, specialist: false)
    @astronaut2 = @spaceshuttle_1.astronauts.create!(name: "Neil Armstrong", age: 40, specialist: true)
    @astronaut3 = @spaceshuttle_2.astronauts.create!(name: "Alan Shepard", age: 38, specialist: true)
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

  # US 7
  describe "when I visit a parents show page" do
    it "I see a count of the number of children associated with this parent" do

      visit "/spaceshuttles/#{@spaceshuttle_1.id}"

      expect(page).to have_content("Astronaut Count")
      expect(page).to have_content(@spaceshuttle_1.astronaut_count)
      # save_and_open_page
    end
  end
end