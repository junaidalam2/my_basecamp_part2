class Project < ApplicationRecord
    has_many :project_teams, dependent: :destroy
    has_many :users, through: :project_teams
    accepts_nested_attributes_for :project_teams, allow_destroy: true
    validates :name, :description, :status, presence: true
end
