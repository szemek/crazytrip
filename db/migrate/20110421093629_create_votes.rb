class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
		t.references :trip
		t.references :user
		t.integer  :rating 
		t.string  :comment 
    t.timestamps
    end
    add_index :votes, [ :trip_id , :user_id ]
  end

  def self.down
    drop_table :votes
  end
end
