class Room < ApplicationRecord
    has_many :availabilities, dependent: :destroy
    has_many :reservations, dependent: :destroy
end
