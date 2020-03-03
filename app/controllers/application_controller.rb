class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def new
    @application = Application.new
  end

  def create
    @application = Application.new(letter_of_motivation: params["application"]["letter_of_motivation"])
    @application.save
    redirect_to root_path
  end
end

