class UserJobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def create
    @user_job = UserJob.new
    @user_job.job = Job.find(params[:job_id])
    @user_job.user = current_user
    if @user_job.save!
      redirect_to @user_job.job
    end
  end

  def destroy
    @user_job = UserJob.find_by(job_id: params[:job_id])
    @user_job.destroy
    redirect_to @user_job.job
  end
end
