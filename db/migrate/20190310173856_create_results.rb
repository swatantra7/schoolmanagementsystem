class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.string :semester
      t.string :klass 
      t.timestamps
    end
  end
end
