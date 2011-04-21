class CreateTripsParticipants < ActiveRecord::Migration
  def self.up
    create_table :trips_users, :id => false do |t|
      t.references :trip
      t.references :user
    end
    add_index :trips_users, ["trip_id","user_id"]
  end

  def self.down
    drop_table :trips_users
  end
end
