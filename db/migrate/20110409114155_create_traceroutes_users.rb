class CreateTraceroutesUsers < ActiveRecord::Migration
  def self.up
    create_table :traceroutes_users, :id => false do |t|
      t.references :traceroute
      t.references :user
    end
    add_index :traceroutes_users, ["traceroute_id","user_id"]
  end

  def self.down
    drop_table :traceroutes_users
  end
end
