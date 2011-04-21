class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string "name"
      t.text "description"
      t.integer "minutes"
      t.boolean "public_request", :default=>false
      t.references :point
      t.references :user
      t.timestamps
    end
    add_index :places, ["point_id"]
  end

  def self.down
    drop_table :places
  end
end
