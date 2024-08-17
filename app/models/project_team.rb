class ProjectTeam < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_one :role

  validates :user_id, presence: true
  validates :project_id, presence: true
end
