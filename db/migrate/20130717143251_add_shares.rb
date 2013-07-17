class AddShares < ActiveRecord::Migration
  def change
  	create_table :shares do |t|
  		t.integer :link_id
  		t.integer :sub_id
  	end
  end
end
