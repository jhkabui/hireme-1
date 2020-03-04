class JobsController < ApplicationController

  def index
    @value = params[:job_name]
    @jobs = Job.all
    @job_cities = []
    Job.all.each do |job|
      @job_cities << job.location
    end
    @job_cities = @job_cities.uniq

    @job_categories = []
    Job.all.each do |job|
      @job_categories << job.category
    end
    @job_categories = @job_categories.uniq

    @jobs = Job.all
    @jobs = @jobs.where(category: params[:category]) if params[:category].present?
    @jobs = @jobs.where(location: params[:category]) if params[:location].present?
    @jobs = @jobs.where("title ILIKE ?", "%#{params[:job_name]}%") if params[:job_name].present?
  end

  def show
    @job = Job.find(params[:id])
  end
end
