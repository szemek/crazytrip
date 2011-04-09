class CreateMediumCategories < ActiveRecord::Migration
  def self.up
    create_table :medium_categories do |t|
      t.string "name"
      t.timestamps
    end
  end

  def self.down
    drop_table :medium_categories
  end
end
