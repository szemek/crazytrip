class CreatePlaceCategoryPlaces < ActiveRecord::Migration
  def self.up
    create_table :place_category_places do |t|
      t.references :place
      t.references :place_category
      t.timestamps
    end
  end

  def self.down
    drop_table :place_category_places
  end
end
