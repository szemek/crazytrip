class CreateTraceroutePoints < ActiveRecord::Migration
  def self.up
    create_table :traceroute_points do |t|
      t.references :traceroute
      t.references :point
      t.datetime "date"
      t.integer "order"
      t.timestamps
    end
  end

  def self.down
    drop_table :traceroute_points
  end
end
