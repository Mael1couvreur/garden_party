class Activity < ApplicationRecord
  belongs_to :plant
  belongs_to :task

  scope :before_date, ->(date) { where("created_at < ?", date) }
end
