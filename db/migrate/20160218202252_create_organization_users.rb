class CreateOrganizationUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :organization_users, id: false do |t|
      t.uuid :organization_id, foreign_key: true, index: true
      t.uuid :user_id, foreign_key: true, index: true
      t.boolean :admin, default: false, null: false
      t.timestamps
    end
    add_index :organization_users, [:organization_id, :user_id], unique: true
  end
end
