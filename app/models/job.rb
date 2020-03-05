class Job < ApplicationRecord
  has_one :application
  has_many :steps
  has_many :user_jobs
  has_many :users, through: :user_jobs
end
