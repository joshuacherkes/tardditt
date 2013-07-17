class AddSubs < ActiveRecord::Migration
  def change
  	create_table :subs do |t|
  		t.integer :mod_id
  		t.string :name

  		t.timestamps
  	end
  end
end
