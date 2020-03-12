class Job < ApplicationRecord
  has_one :application
  has_one :user_job
  has_many :users, through: :user_job, dependent: :destroy
end
