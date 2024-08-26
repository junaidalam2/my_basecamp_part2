class ListsController < ApplicationController
  before_action :set_list, only: %i[ show edit update destroy ]

  # GET /lists or /lists.json
  def index
    if params[:project_id]
        @project = Project.find(params[:project_id])
        @lists = @project.lists
        @lists_title = "Tasks for #{@project.name}"
    elsif params[:user_id]
        @lists = User.find(params[:user_id]).lists
        @lists_title = 'My Tasks'
    else
        @lists = List.all
        @lists_title = 'All Tasks'
    end

    # debugger

  end

  # GET /lists/1 or /lists/1.json
  def show
    @showed_list = List.find(params[:id])
  end

  # GET /lists/new
  def new
    if params[:project_id].present?
      @project = Project.find(params[:project_id])
    end
    @list = List.new

    #debugger
  end

  # GET /lists/1/edit
  def edit
    @list = List.new(list_params)
    
    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  # POST /lists or /lists.json
  def create
    @list = List.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to list_url(@list), notice: "List was successfully created." }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1 or /lists/1.json
  def update
    @list = List.find(params[:id])

    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to list_url(@list), notice: "List was successfully updated." }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1 or /lists/1.json
  def destroy
    @list = List.find(params[:id])
    @list.destroy!

    respond_to do |format|
      format.html { redirect_to lists_url, notice: "List was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def list_params
      params.require(:list).permit(:title, :description, :status, :project_id)
    end
end
