class Users::HomesController < ApplicationController
	before_action :authenticate_user!

	def top
		@attendance_record = AttendanceRecord.new
		@daily_report = DailyReport.new
	end


end

