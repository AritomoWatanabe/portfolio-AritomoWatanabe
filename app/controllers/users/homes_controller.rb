class Users::HomesController < ApplicationController
 before_action :authenticate_user!

	def top
		@attendance_record = AttendanceRecord.new
		@daily_report = DailyReport.new
		wd = ["日", "月", "火", "水", "木", "金", "土"]
		time = Time.new
		@date = time.strftime("%Y年 %m月 %d日(#{wd[time.wday]})")
	end


end

