class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :cv

  has_many :applications

  has_many :user_jobs
  has_many :jobs, through: :user_jobs
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :telephone, presence: true
  validates :grade_point_average, presence: true
  validates :highest_education_attained, presence: true
  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
