class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects, id: :uuid do |t|
      t.uuid :organization_id, null: false, foreign_key: true
      t.string :name, null: false
      t.string :slug, null: false, index: true
      t.timestamps
    end
    add_index :projects, [:organization_id, :slug], unique: true
  end
end
