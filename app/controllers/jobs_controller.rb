class JobsController < ApplicationController

  def index
  end

  def show
    @job = Job.new
  end
end
