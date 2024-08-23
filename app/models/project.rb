class Project < ApplicationRecord
    has_many :project_teams, dependent: :destroy
    has_many :users, through: :project_teams
    belongs_to :team_lead, class_name: 'User', optional: true
    validates :project_teams, presence: true
    accepts_nested_attributes_for :project_teams, allow_destroy: true
    validates :name, :description, :status, presence: true
end
