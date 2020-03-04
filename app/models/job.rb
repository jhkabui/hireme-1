class Job < ApplicationRecord
  jobstatus
  has_one :application
  has_many :steps
end
