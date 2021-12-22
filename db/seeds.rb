# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
times_slot = ["08h-10h", "10h-12h", "14h-16h", "16h-18h"]

days.each do |day|
    times_slot.each do |time_slot|
        Hourly.create(day: day, time_slot: time_slot)
    end
end

Room.create(name: "PADTICE Room", location: "UAC")
Room.create(name: "MOOC Room", location: "UAC")
Room.create(name: "TELETON Amphi", location: "UAC")

@hourlies = Hourly.all
@rooms = Room.all

@rooms.each do |room|
    @hourlies.each do |hourly|
        Availability.create(room: room, hourly: hourly)
    end
end
