class RolesController < ApplicationController
    before_action :set_project_team, only: [:show, :edit, :update, :destroy]
  
    def index
      @roles = Role.all
    end
  
    def new
      @role = Role.new
      @project_team = ProjectTeam.new  # Optionally pre-populate team members
    end
  
    def create
      @role = Role.new(role_params)
      @project_team = ProjectTeam.find_or_create_by(user_id: @role.project_team.user_id, project_id: @role.project_team.project_id)
  
      if @role.save
        flash[:success] = "Role created successfully!"
        redirect_to @role
      else
        render :new
      end
    end
  
    def show
    end
  
    def edit
    end
  
    def update
      if @role.update(role_params)
        flash[:success] = "Role updated successfully!"
        redirect_to @role
      else
        render :edit
      end
    end
  
    def destroy
      @role.destroy
      flash[:success] = "Role deleted successfully!"
      redirect_to roles_path
    end
  
    private
  
    def set_project_team
      @project_team = ProjectTeam.find(params[:project_team_id])  # Assuming route uses project_team_id
    end
  
    def role_params
      params.require(:role).permit(:role_type, :project_team_attributes => [:user_id, :project_id])  # Nested attributes
    end
  end