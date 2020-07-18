class Admins::CarsController < ApplicationController

	def index
		@car = Car.new
		@cars = Car.all
	end

	def create
		@car = Car.new(car_params)
		if @car.save
			redirect_to admins_cars_path
    	else
      		render action: :index
    	end
	end

	def edit
		@car = Car.find(params[:id])
	end


	def update
		@car = Car.find(params[:id])
    	if @car.update(car_params)
      		redirect_to admins_cars_path
    	else
      		redirect_to admins_root_path
    	end
	end

	private
	def car_params
		params.require(:car).permit(:name, :still_run)
	end

end
