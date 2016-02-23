class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations, id: :uuid do |t|
      t.string :name, null: false
      t.string :slug, null: false, unique: true
      t.timestamps
    end
  end
end
