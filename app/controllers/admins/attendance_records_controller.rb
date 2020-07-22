class Admins::AttendanceRecordsController < ApplicationController
 before_action :authenticate_admin!

	def calendar
		@user = User.find(params[:id])
		@attendance_records = AttendanceRecord.where(user_id: params[:id])
	end

	def show
		@attendance_record = AttendanceRecord.find(params[:id])
	end

	private
  		def attendance_record_params
    		params.require(:attendance_record).permit(
    			:user_id,
   				:construction_site_id,
   				:start_time,
   				:finish_at)
  		end
end
