class Job < ApplicationRecord
  has_one :application
  has_many :steps
end
