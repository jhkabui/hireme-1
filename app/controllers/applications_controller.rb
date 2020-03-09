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

  private

  def application_params
    params.require(:application).permit(:letter_of_motivation)
  end

  def set_profile
    @user = current_user
  end
end
