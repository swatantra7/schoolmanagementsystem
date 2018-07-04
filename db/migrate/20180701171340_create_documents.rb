class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.timestamps
      t.string :resource_type
      t.integer :resource_id
    end
    add_attachment :documents, :document
  end
end
