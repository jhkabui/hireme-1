class UserJobsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:home]
def create
    @user_job = UserJob.new(user: User.find(user_job_params[:user]),
                            job: Job.find(user_job_params[:job]))

 if @user_job.save
  redirect_to Job.find(user_job_params[:job])
 end
  end

  private

  def user_job_params
    params.require(:user_job).permit(:user, :job)
  end
end
