class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :plant_information

  has_many :activities
  has_many :tasks, through: :plant_information

  has_one_attached :photo
  validates :age_in_days, presence: true
  validates :photo, presence: true
end
