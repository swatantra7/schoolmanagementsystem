class AddColumnsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :fname, :string
    add_column :students, :mname, :string
    add_column :students, :blood_group, :string
  end
end
