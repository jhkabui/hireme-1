class ApplicationsController < ApplicationController
  before_action :set_profile, only: [:new]
  
  def new
    @application = Application.new
    @job = Job.find(params[:job_id])
  end

  def create
    @application = Application.new(application_params)
    @job = Job.find(params[:job_id])
    @application.job = @job
    @application.user = current_user
    if @application.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def application_params
    params.require(:application).permit(:letter_of_motivation)
  end

  def set_profile
    @user = current_user
  end
end
