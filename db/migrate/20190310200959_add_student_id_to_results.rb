class AddStudentIdToResults < ActiveRecord::Migration[5.0]
  def change
    add_column :results, :student_id, :integer
  end
end
