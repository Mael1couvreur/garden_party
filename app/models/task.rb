class Task < ApplicationRecord
  belongs_to :plant_information

  has_many :actions
end
