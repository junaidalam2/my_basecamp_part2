class AddColumnsToprojectTeams < ActiveRecord::Migration[7.1]
  def change
    add_column :project_teams, :read_access, :boolean, default: true
    add_column :project_teams, :write_access, :boolean
    add_column :project_teams, :update_access, :boolean
    add_column :project_teams, :delete_access, :boolean
  end
end
