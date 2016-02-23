class CreateProjectUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :project_users, id: false do |t|
      t.uuid :organization_id, foreign_key: true, index: true
      t.uuid :user_id, foreign_key: true, index: true
      t.boolean :admin, default: false, null: false
      t.timestamps
    end
    add_index :project_users, [:organization_id, :user_id], unique: true
  end
end
