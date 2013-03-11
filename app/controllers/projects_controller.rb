class ProjectsController < ApplicationController
  before_filter :logged_in

  def index
    @projects = Project.order(:deadline)
  end
  def up
    project = Project.find(params[:id])
    render :json => project.swap_higher(@auth)
  end
  def down
    project = Project.find(params[:id])
    render :json => project.swap_lower(@auth)
  end
  def new
    @project = Project.new
  end
  def create
    Project.create(params[:project])
    @projects = Project.order(:deadline)
  end
  def update
    project = Project.find(params[:id])
    project.update_attributes(params[:project])
    render :json => [project]
  end

end