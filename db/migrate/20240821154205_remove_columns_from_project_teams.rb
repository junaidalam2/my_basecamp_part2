class RemoveColumnsFromProjectTeams < ActiveRecord::Migration[7.1]
  def change
    remove_column :project_teams, :read_access, :boolean
    remove_column :project_teams, :write_access, :boolean
    remove_column :project_teams, :update_access, :boolean
    remove_column :project_teams, :delete_access, :boolean
  end
end
