class CreateTrips < ActiveRecord::Migration
  def self.up
    create_table :trips do |t|
      t.string "name"
      t.text "description"
      t.references :user
      t.timestamps
    end
    add_index :trips, ["user_id"]
  end

  def self.down
    drop_table :trips
  end
end
