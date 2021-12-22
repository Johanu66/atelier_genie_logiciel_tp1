class Availability < ApplicationRecord
  belongs_to :room
  belongs_to :hourly
end
