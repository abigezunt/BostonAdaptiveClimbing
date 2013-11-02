class EventRegistrations < ActiveRecord::Migration
  def change
  	create_table :event_registrations do |t|
  		t.belongs_to :user, index: true
  		t.belongs_to :event, index: true
  		t.boolean :paid
  		t.string :role
  		t.integer :price
  		t.timestamps
  	end
  end
end
