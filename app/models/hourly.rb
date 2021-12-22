class Hourly < ApplicationRecord
    has_many :availabilities, dependent: :destroy
end
