class AddColumnToProjectTeams < ActiveRecord::Migration[7.1]
  def change
    add_column :project_teams, :team_lead, :boolean
  end
end
