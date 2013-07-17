class AddVoting < ActiveRecord::Migration
  def change
  	create_table :votes do |t|
  		t.integer :user_id
  		t.integer :link_id
  		t.string :vote

  		t.timestamps
  	end
  end
end
