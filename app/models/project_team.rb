class ProjectTeam < ApplicationRecord
  belongs_to :user
  belongs_to :project
  # has_one :team_lead, through: :project_team, source: :user

  # private

  # def project_team
  #   project_teams.find_by(team_lead: true)
  # end

end
