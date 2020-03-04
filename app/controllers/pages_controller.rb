class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :set_profile, only: [:edit, :update, :show]

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
  end

  def edit
  end

  def update
    @user.update(profile_params)
    if @user.save
      redirect_to profile_show_path
    else
      render 'edit'
    end
  end

  def show
  end

  private
  def profile_params
    params.require(:user).permit(:first_name, :last_name, :cv, :telephone, :grade_point_average, :highest_education_attained, :email, :password)
  end

  def set_profile
    @user = current_user
  end
end
