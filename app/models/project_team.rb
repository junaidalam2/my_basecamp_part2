class ProjectTeam < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :lists

  #validates :user_id, uniqueness: { scope: :project_id }

  has_many :team_members, through: :user


  scope :by_project, ->(project) { where(project: project) }

end
