class List < ApplicationRecord
    belongs_to :project_team, foreign_key: :project_teams_id

    validates :title, presence: true
    validates :description, presence: true
    validates :status, presence: true
    validates :project_team_id, presence: true

end
