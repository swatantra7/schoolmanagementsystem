class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :age
      t.timestamps null: false
    end
    add_column :teachers, :fname, :string
    add_column :teachers, :mname, :string
    add_column :teachers, :blood_group, :string
  end
end
