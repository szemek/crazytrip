class CreatePoints < ActiveRecord::Migration
  def self.up
    create_table :points do |t|
      t.decimal "x"
      t.decimal "y"
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :points
  end
end
