class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.binary "data"
      t.references :photo_category
      t.references :place
      t.timestamps
    end
    add_index :photos, [:photo_category_id]
  end

  def self.down
    drop_table :photos
  end
end
