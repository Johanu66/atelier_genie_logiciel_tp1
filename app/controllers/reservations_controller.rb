class ReservationsController < ApplicationController
    def index
        @reservations = current_user.teacher.reservations
    end
    def create
        @availability = Availability.find(params[:availability])
        Reservation.create(teacher: current_user.teacher, hourly: @availability.hourly, room: @availability.room)
        @availability.destroy
        flash[:notice] = 'The room has been reserved'
        redirect_to availabilities_path
    end
    def destroy
        @reservation = Reservation.find(params[:id])
        Availability.create(hourly: @reservation.hourly, room: @reservation.room)
        @reservation.destroy
        flash[:notice] = 'The reservation has been cancelled'
        redirect_to reservations_path
    end
end