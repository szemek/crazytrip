class CreateTripPoints < ActiveRecord::Migration
  def self.up
    create_table :trip_points do |t|
      t.references :trip
      t.references :point
      t.datetime "date"
      t.integer "order"
      t.timestamps
    end
    add_index :trip_points, ["trip_id","point_id"]
  end

  def self.down
    drop_table :trip_points
  end
end
