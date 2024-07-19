class RemoveBooleanRolesFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :applicant
    remove_column :users, :doxer
    remove_column :users, :admin
  end
end
