class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show]

  def show
  end

  private
  def set_profile
    @user = current_user
  end
end
