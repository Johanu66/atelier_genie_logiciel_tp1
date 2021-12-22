class Reservation < ApplicationRecord
  belongs_to :room
  belongs_to :hourly
  belongs_to :teacher
end
