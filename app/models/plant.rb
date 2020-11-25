class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :plant_information

  has_many :activities
  has_many :tasks, through: :plant_information
end
