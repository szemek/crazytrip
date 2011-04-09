class CreateMedia < ActiveRecord::Migration
  def self.up
    create_table :media do |t|
      t.binary "data"
      t.references :medium_category
      t.timestamps
    end
  end

  def self.down
    drop_table :media
  end
end
