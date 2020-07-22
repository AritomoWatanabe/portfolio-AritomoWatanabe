class Users::MachinesController < ApplicationController
 before_action :authenticate_user!

	def index
		@machines = Machine.all.page(params[:page]).per(10)
	end

	def update
		@machine = Machine.find(params[:id])
    	if @machine.update(machine_params)
    		flash[:notice] = "機械・機材情報を編集しました！"
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
