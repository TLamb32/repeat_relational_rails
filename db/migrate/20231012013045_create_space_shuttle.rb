class CreateSpaceShuttle < ActiveRecord::Migration[7.0]
  def change
    create_table :space_shuttles do |t|
      t.string :mission_name
      t.integer :crew
      t.boolean :flight_ready

      t.timestamps
    end
  end
end
