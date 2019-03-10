class CreateAcademicRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :academic_records do |t|

      t.timestamps
    end
  end
end
