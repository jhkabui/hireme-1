class JobsController < ApplicationController

  def index
    @jobs = Job.all
    @job_cities = []
    @job_categories = []

    if params[:query].present?
      @job_name_value = params[:job_name]
      @job_cities_value = jobs_params[:city]
      @job_categories_value = jobs_params[:department]


      @jobs = Job.all
      @jobs = @jobs.where(category: jobs_params[:department]) if jobs_params[:department].present?
      @jobs = @jobs.where(location: jobs_params[:city]) if jobs_params[:city].present?
      @jobs = @jobs.where("title ILIKE ?", "%#{params[:job_name]}%") if params[:job_name].present?
    end

    Job.all.each do |job|
      @job_cities << job.location
    end
    @job_cities = @job_cities.uniq
    Job.all.each do |job|
      @job_categories << job.category
    end
    @job_categories = @job_categories.uniq
  end

  def show
    @job = Job.find(params[:id])
    @user_job = UserJob.new
  end

  private

  def jobs_params
    params.require(:query).permit(:city, :department)
  end
end
