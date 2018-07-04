class CreateStudentSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :student_sheets do |t|
      t.integer :user_id
      t.timestamps
    end
  end
end
