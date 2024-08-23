class List < ApplicationRecord

    def index
        if param[:project_id]
            @project = Project.find(param[:project_id])
            @lists = Project.lists
            @lists_title = "Tasks for #{@project.name}"
        elsif params[:user_id]
            @lists = User.find(params[:user_id]).lists
            @lists_title = 'My Tasks'
        else
            @lists = List.all
            @lists_title = 'All Tasks'
        end
    end


    def show
        @showed_user = List.find(params[:id])
    end

    def new
        @list = List.new
    end

    def edit
        @list = List.find(params[:id])
    end

    def create
        @list = List.new(list_params)
    
        if @list.save
          redirect_to @list, notice: 'List was successfully created.'
        else
          render :new
        end
    end
    

    def update
        @list = List.find(params[:id])

        if @list.update(list_params)
            redirect_to @list, notice: 'List was successfully updated.'
        else
            render :edit   

        end
    end

    def destroy
        @list = List.find(params[:id])
        @list.destroy
    
        redirect_to lists_url, notice: 'List was successfully destroyed.'
    end


    private
    
    def list_params
        params.require(:list).permit(:title, :description, :status, :project_id)
    end



end
