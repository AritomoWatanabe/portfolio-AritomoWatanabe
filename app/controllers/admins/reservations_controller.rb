class Admins::ReservationsController < ApplicationController

	def index
		@reservations = Reservation.all
	end

	def new
		@reservation = Reservation.new
	end

	def create
		@reservation = Reservation.new(reservation_params)
		if @reservation.save
			redirect_to admins_reservations_path
		else
			redirect_to new_admins_reservation_path
		end
	end

	def show
		@reservation = Reservation.find(params[:id])
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to admins_reservations_path
	end

	private
  		def reservation_params
    		params.require(:reservation).permit(
    			:car_id,
   				:construction_site_id,
   				:content,
   				:start_time,
   				:finish_at)
  		end

end
