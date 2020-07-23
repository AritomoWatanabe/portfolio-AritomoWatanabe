class Admins::CarsController < ApplicationController
 before_action :authenticate_admin!

	def index
		@car = Car.new
		@cars = Car.all.page(params[:page]).per(10)
	end

	def create
		@car = Car.new(car_params)
		if @car.save
			flash[:notice] = "新規車両を追加しました！"
			redirect_to admins_cars_path
    	else
    		@cars = Car.all
      		render action: :index
    	end
	end

	def edit
		@car = Car.find(params[:id])
	end


	def update
		@car = Car.find(params[:id])
    	if @car.update(car_params)
    		flash[:notice] = "車両情報を変更しました！"
      		redirect_to admins_cars_path
    	else
      		render action: :edit
    	end
	end

	private
	def car_params
		params.require(:car).permit(:name, :still_run)
	end

end
