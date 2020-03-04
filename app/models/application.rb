class Application < ApplicationRecord
  has_many :interviews
  belongs_to :job
  belongs_to :user
end
