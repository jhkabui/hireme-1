class ApplicationsController < ApplicationController
  before_action :set_profile, only: [:new]

  def new
    @application = Application.new
    @job = Job.find(params[:job_id])
  end

  def create
    @job = Job.find(params[:job_id])
    @application = params[:application].present? ? Application.new(application_params) : Application.new
    @application.job = @job
    @application.user = current_user
    if @application.save
      redirect_to dashboard_path(created: true)
    else
      render :new
    end
  end

  def edit
    @application = Application.find(params[:id])
    @job = Job.find(params[:job_id])
  end

  def update
    @application = Application.find(params[:id])
    if @application.update(application_update_params)
      redirect_to dashboard_path
    end
  end
  private

  def application_params
    params.require(:application).permit(:letter_of_motivation)
  end

  def application_update_params
    params.require(:application).permit(:status)
  end

  def set_profile
    @user = current_user
  end
end
