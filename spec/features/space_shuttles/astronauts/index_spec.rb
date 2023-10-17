require "rails_helper"

RSpec.describe "Spaceshuttles/Astronauts Index" do
  before :each do
    @spaceshuttle_1 = SpaceShuttle.create(mission_name: "Endeavour", crew: 8, flight_ready: false)
    @spaceshuttle_2 = SpaceShuttle.create(mission_name: "Atlantis", crew: 9, flight_ready: true)

    @astronaut1 = @spaceshuttle_1.astronauts.create!(name: "Buzz Aldrin", age: 45, specialist: false)
    @astronaut2 = @spaceshuttle_1.astronauts.create!(name: "Neil Armstrong", age: 40, specialist: true)
    @astronaut3 = @spaceshuttle_2.astronauts.create!(name: "Alan Shepard", age: 38, specialist: true)
  end

  # US 5
  describe "When I visit '/spaceshuttles/:space_shuttle_id/astronauts'" do
    it "I see each Child that is associated with that Parent with each Child's attributes" do

      visit "/spaceshuttles/#{@spaceshuttle_1.id}/astronauts"

      expect(page).to have_content(@spaceshuttle_1.mission_name)
      expect(page).to have_content(@astronaut1.name)
      expect(page).to have_content(@astronaut2.name)

      expect(page).to_not have_content(@spaceshuttle_2)
      expect(page).to_not have_content(@astronaut3)
      # save_and_open_page
    end
  end
end