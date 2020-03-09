class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show]

  def show
    @favorite_jobs = current_user.jobs
  end

  private
  def set_profile
    @user = current_user
  end
end
