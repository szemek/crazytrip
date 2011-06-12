class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.binary "data"
      t.string "file_type"
      t.references :place
      t.timestamps
    end
    add_index :photos, [:place_id]
  end

  def self.down
    drop_table :photos
  end
end
