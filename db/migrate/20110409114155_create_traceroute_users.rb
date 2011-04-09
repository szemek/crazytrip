class CreateTracerouteUsers < ActiveRecord::Migration
  def self.up
    create_table :traceroute_users do |t|
      t.references :traceroute
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :traceroute_users
  end
end
