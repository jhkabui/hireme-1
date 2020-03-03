class JobsController < ApplicationController

  def index
    @jobs = Job.all
    @jobs = @jobs.where(category: params[:category]) if params[:category].present?
    @jobs = @jobs.where(location: params[:category]) if params[:location].present?
    @jobs = @jobs.where("title ILIKE ?", "%#{params[:job_name]}%") if params[:job_name].present?
  end

  def show
    @job = Job.find(params[:id])
  end
end
