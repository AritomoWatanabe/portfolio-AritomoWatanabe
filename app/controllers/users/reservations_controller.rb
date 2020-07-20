class Users::ReservationsController < ApplicationController
	before_action :authenticate_user!

	def index
		@reservations = Reservation.all
	end

	def new
		@reservation = Reservation.new
	end

	def create
		@reservation = Reservation.new(reservation_params)
		if @reservation.save
			flash[:notice] = "配車予約が完了しました！"
			redirect_to users_reservations_path
		else
			render action: :new
		end
	end

	def show
		@reservation = Reservation.find(params[:id])
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
