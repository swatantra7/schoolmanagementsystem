class AddAdditionalColumnsToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :email, :string
    add_column :students, :password, :string
    add_column :students, :confirm_password, :string
    add_column :students, :encrypted_password,  :string
    add_column :students, :reset_password_token, :string
    add_column :students, :reset_password_sent_at, :datetime

      ## Rememberable
    add_column :students, :remember_created_at, :datetime
  end
end
