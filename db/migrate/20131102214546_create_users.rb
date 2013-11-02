class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :age
      t.text :disabilities
      t.text :volunteer_info
      t.string :type_of_participant
      t.boolean :bkbs_member
      t.boolean :belay_certified
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.boolean :has_shoes
      t.boolean :has_harness
      t.boolean :admin

      t.timestamps
    end
  end
end
