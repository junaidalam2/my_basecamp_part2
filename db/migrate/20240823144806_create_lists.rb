class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :description
      t.string :status
      t.references :project_team, null: false, foreign_key: true
      t.timestamps
    end
  end
end
