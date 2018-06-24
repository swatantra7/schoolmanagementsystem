class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :villege
      t.string :state
      t.string :po
      t.string :dist
      t.string :pincode
      t.string :mobile
      t.string :email_id
      t.datetime :dob
      t.string :session
      t.string :aadhar_number
      t.string :resource_id
      t.string :resource_type

      t.timestamps null: false
    end
    add_foreign_key :addresses, :resources
  end
end
