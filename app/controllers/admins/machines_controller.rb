class Admins::MachinesController < ApplicationController
	before_action :authenticate_admin!

	def index
		@machine = Machine.new
		@machines = Machine.all.page(params[:page]).per(10)
	end

	def create
		@machine = Machine.new(machine_params)
		if @machine.save
			flash[:notice] = "新しい機械・機材を追加しました！"
			redirect_to admins_machines_path
    	else
    		@machines = Machine.all.page(params[:page]).per(10)
      		render action: :index
    	end
	end

	def update
		@machine = Machine.find(params[:id])
    	if @machine.update(machine_params)
    		flash[:notice] = "機械・機材情報を編集しました！"
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
