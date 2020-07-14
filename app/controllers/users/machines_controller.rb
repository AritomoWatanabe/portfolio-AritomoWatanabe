class Users::MachinesController < ApplicationController

	def index
		@machines = Machine.all.page(params[:page]).per(10)
	end

	def update
		@machine = Machine.find(params[:id])
    	if @machine.update(machine_params)
      		redirect_to	users_machines_path
    	else
      		redirect_to users_root_path
    	end
	end

	private
	def machine_params
		params.require(:machine).permit(
			:construction_site_id, :name, :need_repair)
	end

end
