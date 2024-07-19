class AddForeignKeyToUsers < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :users, :roles, column: :role, primary_key: :name
  end
end
