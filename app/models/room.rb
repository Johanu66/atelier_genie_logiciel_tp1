class Room < ApplicationRecord
    has_many :availabilities, dependent: :destroy
end
