class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:lewagon]

  def index
    @jobs = Job.all
  end

  def hireme
    @jobs = Job.all
  end

  def home
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
  end

  def dashboard
    @jobs = Job.all
    @applications = current_user.applications
    @all_applications = Application.all


  end
end
