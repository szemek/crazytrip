class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string :name
      t.text :description
      t.integer :minutes, :default =>0
      t.references :point
      t.references :user
      t.timestamps
    end
    add_index :places, [:user_id]
    add_index :places, [:point_id]
  end

  def self.down
    drop_table :places
  end
end
