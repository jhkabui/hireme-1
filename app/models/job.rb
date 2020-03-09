class Job < ApplicationRecord
  has_one :application
  has_many :steps
  has_one :user_job
  has_many :users, through: :user_jobs
end
