class Project < ApplicationRecord
    has_many :project_teams
    has_many :users, through: :project_teams
    validates :name, :description, :status, presence: true
end
