class Role < ApplicationRecord
  belongs_to :project_team

  validates :role_type, presence: false, inclusion: { in: %w(team_lead team_member) }

  scope :for_user, ->(user) { where(user_id: user.id) }
end
