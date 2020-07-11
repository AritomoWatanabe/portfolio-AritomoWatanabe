class Users::AttendanceRecordsController < ApplicationController

	def create
		# params[:attendance_record][:begin_at] = begin_at1
		# params[:attendance_record][:finish_at] = finish_at1
		@attendance_record.begin_at = DateTime.new(
			params[:attendance_record]["begin_at(1i)"].to_i,
			params[:attendance_record]["begin_at(2i)"].to_i,
			params[:attendance_record]["begin_at(3i)"].to_i,
			params[:attendance_record]["begin_at(4i)"].to_i,
			params[:attendance_record]["begin_at(5i)"].to_i
			)
		@attendance_record.finish_at = DateTime.new(
			params[:attendance_record]["finish_at(1i)"].to_i,
			params[:attendance_record]["finish_at(2i)"].to_i,
			params[:attendance_record]["finish_at(3i)"].to_i,
			params[:attendance_record]["finish_at(4i)"].to_i,
			params[:attendance_record]["finish_at(5i)"].to_i
			)
		@attendance_record = AttendanceRecord.new(attendance_record_params)

		if @attendance_record.save
			redirect_to users_attendance_record_path(@attendance_record.id)
		end
	end

	def index
		@attendance_records = AttendanceRecord.all
	end

	def show
		@attendance_record = AttendanceRecord.find(params[:id])
		@construction_site = ConstructionSite.find(params[:id])
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
   				:begin_at
   				:finish_at)
  		end

  		# def begin_at1
  		# 	date = params[:attendance_record][:begin_at]
  		# 	Date.new date["begin_at(1i)"].to_i,date["begin_at(2i)"].to_i, date["begin_at(3i)"].to_i, date["begin_at(4i)"].to_i,date["begin_at(5i)"].to_i
  		# end

  		# def finish_at1
  		# 	date = params[:attendance_record][:finish_at]
  		# 	Date.new date["finish_at(1i)"].to_i, date["finish_at(2i)"].to_i, date["finish_at(3i)"].to_i, date["finish_at(4i)"].to_i, date["finish_at(5i)"].to_i
  		# end

end