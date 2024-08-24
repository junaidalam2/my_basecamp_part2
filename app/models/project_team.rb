class ProjectTeam < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :lists
end
