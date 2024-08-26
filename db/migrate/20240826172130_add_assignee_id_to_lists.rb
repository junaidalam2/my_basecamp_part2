class AddAssigneeIdToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :assignee_id, :integer
    add_foreign_key :lists, :users, column: :assignee_id
  end
end
