class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :cv

  has_many :applications
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :telephone, presence: true
  validates :grade_point_average, presence: true
  validates :highest_education_attained, presence: true
end
