class Application < ApplicationRecord
  STATUSES = ["Phone screening", "Email-based case study", "On-site interview", "Final decision" ]

  DESCRIPTIONS = ['You will be contacted by managerial staff, who will review with you your qualifications and discuss your expectations for the position, as well as your career aspirations.', 'To further test your qualifications, you will be asked a series of written questions, to be returned to us via email within 3 to 5 days.', 'You will be invited to an on-site meeting with one or more members of our managerial staff, in order to further assess your skill and abilities.','Awaiting final decision on your application.']

  has_many :interviews

  belongs_to :job
  belongs_to :user

  has_one_attached :letter_of_motivation

  enum status: STATUSES

  def status_description
    index = STATUSES.index(status)
    return DESCRIPTIONS[index]
  end

end
