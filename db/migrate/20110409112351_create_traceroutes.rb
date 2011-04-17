class CreateTraceroutes < ActiveRecord::Migration
  def self.up
    create_table :traceroutes do |t|
      t.string "name"
      t.text "description"
      t.references :user
      t.timestamps
    end
    add_index :traceroutes, ["user_id"]
  end

  def self.down
    drop_table :traceroutes
  end
end
