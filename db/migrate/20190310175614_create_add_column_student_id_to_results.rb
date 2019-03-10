class CreateAddColumnStudentIdToResults < ActiveRecord::Migration[5.0]
  def change
    create_table :add_column_student_id_to_results do |t|

      t.timestamps
    end
  end
end
