class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.date :time_frame_for_completion
      t.string :status

      t.timestamps
    end
  end
end
