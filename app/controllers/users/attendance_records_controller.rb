class Users::AttendanceRecordsController < ApplicationController

	def create
		@attendance_record = AttendanceRecord.new(attendance_record_params)
		@attendance_record.user_id = current_user.id
		if @attendance_record.save
			redirect_to users_attendance_record_path(@attendance_record.id)
		else
			redirect_to users_user_path(current_user.id)
		end
	end

	def index
	end

	def show
		@attendance_record = AttendanceRecord.find(params[:id])
	end

	def edit
		@attendance_record = AttendanceRecord.find(params[:id])
	end

	def update
		@attendance_record = AttendanceRecord.find(params[:id])
		if @attendance_record.update(attendance_record_params)
			redirect_to users_attendance_record_path(@attendance_record.id)
		else
			render action: :edit
		end
	end

	private
  		def attendance_record_params
    		params.require(:attendance_record).permit(
    			:user_id,
   				:construction_site_id,
   				:begin_at,
   				:finish_at)
  		end

end