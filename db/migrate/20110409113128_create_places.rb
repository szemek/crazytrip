class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string "name"
      t.text "description"
      t.integer "minutes"
      t.references :point
      t.timestamps
    end
    add_index :places, ["point_id"]
  end

  def self.down
    drop_table :places
  end
end
