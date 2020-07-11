class Users::HomesController < ApplicationController

	def top
		#打刻
		@attendance_record = AttendanceRecord.new
		@construction_sites = ConstructionSite.all
		#日報
		@daily_report = DailyReport.new
	end



end

