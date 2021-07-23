class ProjectsController < ApplicationController
  def created
    @project = Project.create(name: params[:name], description: params[:description], begin: params[:begin], end: params[:end], status: params[:status])
  end

  def new
    @project = Project.new
  end

  def dashboard
    if params[:status].present?
      @projects = Project.where('status = ?', params[:status])
    else
    @projects = Project.all
    end
  end
end
