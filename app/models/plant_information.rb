class PlantInformation < ApplicationRecord
  has_many :plants
  has_many :tasks
end
