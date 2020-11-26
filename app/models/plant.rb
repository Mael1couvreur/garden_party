class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :plant_information

  has_many :activities
  has_many :tasks, through: :plant_information
  
  has_one_attached :photo
end
