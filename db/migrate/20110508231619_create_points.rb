class CreatePoints < ActiveRecord::Migration
  def self.up
    create_table :points do |t|
      t.decimal :x, :precision => 15, :scale => 10
      t.decimal :y, :precision => 15, :scale => 10
      t.timestamps
    end
    add_index :points, [:x,:y]
  end

  def self.down
    drop_table :points
  end
end
