class AddColumnStudentIdToAdmidcards < ActiveRecord::Migration[5.0]
  def change
    add_column :admidcards, :student_id, :integer
  end
end
