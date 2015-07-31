class TaskApi::TasksController < TaskApi::ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    # @tasks = Task.all
    @user = TaskApi::User.find(session[:user_id])
    @tasks = @user.tasks
    @year = params[:year]
    @month = params[:month]
    @date = params[:date]
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = TaskApi::Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @user = TaskApi::User.find(session[:user_id])
    @task = @user.tasks.new(task_params)

    # p @user.tasks
    # @user.tasks.create!(task_params)

    respond_to do |format|
      if @task.save
        # format.html { redirect_to tasks_url, notice: 'Task was successfully created.' }
        format.html { 
          @tasks = [@task]
          render :layout => false, :template => 'tasks/index.html.erb'
        }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end
  def list
  end
  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
   @task.update(task_params)
    respond_to do |format|
      format.html{
       @tasks = [@task]

      render :layout => false, :template => 'tasks/index.html.erb'
     
    }
    
      
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
    format.html{
      @tasks = [@task]
      render :layout => false, :template => 'tasks/index.html.erb'
     
    }
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = TaskApi::Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:content, :date)
    end
end
