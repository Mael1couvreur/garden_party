class Action < ApplicationRecord
  belongs_to :plant
  belongs_to :task
end
