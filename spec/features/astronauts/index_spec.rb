require "rails_helper"

RSpec.describe "Astronauts Index" do
  before :each do
    @spaceshuttle_1 = SpaceShuttle.create(mission_name: "Endeavour", crew: 8, flight_ready: false)
    @spaceshuttle_2 = SpaceShuttle.create(mission_name: "Atlantis", crew: 9, flight_ready: true)

    @astronaut1 = @spaceshuttle_1.astronauts.create!(name: "Buzz Aldrin", age: 45, specialist: false)
    @astronaut2 = @spaceshuttle_1.astronauts.create!(name: "Neil Armstrong", age: 40, specialist: true)
    @astronaut3 = @spaceshuttle_2.astronauts.create!(name: "Alan Shepard", age: 38, specialist: true)
  end
  
  # US 3
  describe "When I visit '/astronauts'" do
    it "can display each astronaut in the system including their attributes" do

      visit "/astronauts"
      expect(page).to have_content("Name: #{@astronaut1.name}")
      expect(page).to have_content("Age: #{@astronaut1.age}")
      expect(page).to have_content("Is a specialist? #{@astronaut1.specialist}")
      
      expect(page).to have_content("Name: #{@astronaut2.name}")
      expect(page).to have_content("Age: #{@astronaut2.age}")
      expect(page).to have_content("Is a specialist? #{@astronaut2.specialist}")
      save_and_open_page
    end
  end
end