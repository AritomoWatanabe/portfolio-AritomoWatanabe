class Admins::MachinesController < ApplicationController

	def index
		@machine = Machine.new
		@machines = Machine.all.page(params[:page]).per(10)
	end

	def create
		@machine = Machine.new(machine_params)
		if @machine.save
			redirect_to admins_machines_path
    	else
      		render action: :index
    	end
	end

	def update
		@machine = Machine.find(params[:id])
    	if @machine.update(machine_params)
      		redirect_to admins_machines_path
    	else
      		redirect_to admins_root_path
    	end
	end

	private
	def machine_params
		params.require(:machine).permit(
			:construction_site_id, :name, :need_repair)
	end

end
