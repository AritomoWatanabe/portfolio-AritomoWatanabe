class Admins::AttendanceRecordsController < ApplicationController


	def show
		@attendance_record = AttendanceRecord.find(params[:id])
	end


	private
  		def user_params
    	params.require(:user).permit(:family_name,:first_name,:family_name_kana,:first_name_kana,:email,:address,:telephone_number,:is_withdrawal)
		end

end
