class AddLinks < ActiveRecord::Migration
  def change
  	create_table :links do |t|
  		t.string :url
  		t.string :title
  		t.text :body
  	end
  end
end
