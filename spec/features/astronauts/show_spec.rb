require "rails_helper"

RSpec.describe "Astronauts Show" do
  before :each do
    @spaceshuttle_1 = SpaceShuttle.create!(mission_name: "Endeavour", crew: 8, flight_ready: false)
    @spaceshuttle_2 = SpaceShuttle.create!(mission_name: "Atlantis", crew: 9, flight_ready: true)

    @astronaut1 = @spaceshuttle_1.astronauts.create!(name: "Buzz Aldrin", age: 45, specialist: false)
    @astronaut2 = @spaceshuttle_1.astronauts.create!(name: "Neil Armstrong", age: 40, specialist: true)
    @astronaut3 = @spaceshuttle_2.astronauts.create!(name: "Alan Shepard", age: 38, specialist: true)
  end

  # US 4
  describe "When I visit '/astronauts/:id'" do
    it "I see the astonaut with that id including the astronaut's attributes" do

      visit "astronauts/#{@astronaut1.id}"

      expect(page).to have_content(@astronaut1.name)
      expect(page).to have_content("Age: #{@astronaut1.age}")
      expect(page).to have_content("Is a specialist? #{@astronaut1.specialist}")

      expect(page).to_not have_content(@astronaut2.name)
      # save_and_open_page
    end
  end
end