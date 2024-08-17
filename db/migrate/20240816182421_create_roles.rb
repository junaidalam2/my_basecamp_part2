class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.integer :project_id, null: false, foreign_key: true
      t.string :role_type, null: false

      t.timestamps
    end

    add_index :roles, [:user_id, :project_id], unique: true
  end
end
