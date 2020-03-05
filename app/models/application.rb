class Application < ApplicationRecord

  STATUSES = ["Telephone screening interview", "Email-based challenge", "On-site interview", "Final determination" ]

  DESCRIPTIONS = ['You will be contacted by managerial staff, who will review with you your qualifications and discuss your expectations for the position, as well as your career aspirations.', 'You will be contacted by managerial staff, who will review with you your qualifications and discuss your expectations for the position, as well as your career aspirations.', 'You will be invited to an on-site meeting with one or more members of our managerial staff, in order to further assess your skill and abilities.','Awaiting final decision on your application.']

  has_many :interviews

  belongs_to :job
  belongs_to :user

  enum status: STATUSES

  def status_description
    index = STATUSES.index(status)
    return DESCRIPTIONS[index]
  end

end
