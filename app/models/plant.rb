class Plant < ApplicationRecord
  belongs_to :user
  belongs_to :plant_information

  has_many :actions
  has_many :tasks, through: :plant_information
end
