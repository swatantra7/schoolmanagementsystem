class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :faculty
      t.string :title_of_course

      t.timestamps null: false
    end
  end
end
