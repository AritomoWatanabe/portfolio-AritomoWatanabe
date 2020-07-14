class Admins::AttendanceRecordsController < ApplicationController

# 出勤簿カレンダー

	def index
		@attendance_records = AttendanceRecord.all
		@user = User.find(params[:id])
	end

	def show
		@user = User.find(params[:id])
	end


	private
  		def user_params
    	params.require(:user).permit(:family_name,:first_name,:family_name_kana,:first_name_kana,:email,:address,:telephone_number,:is_withdrawal)
		end

end
