class CreatePlaceCategoriesPlaces < ActiveRecord::Migration
  def self.up
    create_table :place_categories_places, :id => false do |t|
      t.references :place
      t.references :place_category
    end
    add_index :place_categories_places, ["place_category_id","place_id"]
  end

  def self.down
    drop_table :place_categories_places
  end
end
