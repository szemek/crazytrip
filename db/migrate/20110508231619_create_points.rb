class CreatePoints < ActiveRecord::Migration
  def self.up
    create_table :points do |t|
      t.decimal :lat, :precision => 15, :scale => 10, :default => 50.061933
      t.decimal :lng, :precision => 15, :scale => 10, :default => 19.937611
      t.timestamps
    end
    add_index :points, [:lat, :lng]
  end

  def self.down
    drop_table :points
  end
end
