class JobsController < ApplicationController

  def index
  	if params[:query].present?
  	  sql_query = "title ILIKE :query OR syllabus ILIKE :query"
      @jobs = Job.where(sql_query, query: "%#{params[:query]}%")
    else
      @jobs = Job.all
    end
  end

  def show
    @job = Job.find(params[:id])
  end
end
