class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.boolean :create_user
      t.boolean :create_applicant
      t.boolean :create_teammate
      t.boolean :create_admin
      t.boolean :access_portal
      t.boolean :own_upload
      t.boolean :all_uploads
      t.boolean :edit_assignment
      t.boolean :edit_review

      t.timestamps
    end
  end
end
