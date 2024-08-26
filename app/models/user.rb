class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :project_teams, dependent: :destroy
  has_many :projects, through: :project_teams
  validates_uniqueness_of :email
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :first_name, :last_name, :position, :department, :profile, presence: true
  has_many :assigned_lists, through: :project_teams, source: :lists
  has_many :team_members, through: :project_teams, source: :project
end
