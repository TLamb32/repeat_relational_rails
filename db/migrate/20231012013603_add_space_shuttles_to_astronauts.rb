class AddSpaceShuttlesToAstronauts < ActiveRecord::Migration[7.0]
  def change
    add_reference :astronauts, :space_shuttle, null: false, foreign_key: true
  end
end
