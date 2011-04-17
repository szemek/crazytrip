class CreatePlaceCategories < ActiveRecord::Migration
  def self.up
    create_table :place_categories do |t|
      t.string "name"
      t.timestamps
    end
    add_index :place_categories, ["name"]
  end

  def self.down
    drop_table :place_categories
  end
end
