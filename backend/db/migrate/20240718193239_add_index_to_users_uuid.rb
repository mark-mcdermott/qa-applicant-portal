class AddIndexToUsersUuid < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :uuid, :uuid, default: "gen_random_uuid()", null: false
    add_index :users, :uuid
  end
end
