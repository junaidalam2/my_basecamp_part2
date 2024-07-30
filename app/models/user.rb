class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :project_teams, dependent: :destroy
  has_many :projects, through: :project_teams
  validates :first_name, :last_name, :position, :department, :profile, :email, presence: true

end
