class Users::DailyReportsController < ApplicationController
	before_action :authenticate_user!

	def calendar
		@construction_site = ConstructionSite.find(params[:id])
		@daily_reports = DailyReport.where(construction_site_id: params[:id])
	end

	def create
		@daily_report = DailyReport.new(daily_report_params)
		if @daily_report.save
			flash[:notice] = "日報を作成しました！"
			redirect_to users_daily_report_path(@daily_report.id)
		else
			@attendance_record = AttendanceRecord.new
			@daily_report = DailyReport.new
			flash[:danger] = '打刻/日報作成に失敗しました。再度入力をお願いします。'
			render template: 'users/homes/top'
		end
	end

	def show
		@daily_report = DailyReport.find(params[:id])
	end

	def edit
		@daily_report = DailyReport.find(params[:id])
		@construction_sites = ConstructionSite.all
	end

	def update
		@daily_report = DailyReport.find(params[:id])
		if @daily_report.update(daily_report_params)
			flash[:notice] = "日報を編集しました！"
			redirect_to users_daily_report_path(@daily_report.id)
		else
			render action: :edit
		end
	end

	private
  		def daily_report_params
    		params.require(:daily_report).permit(
    			:construction_site_id,
    			:date,
    			:content,
    			:etcetera,
    			:company_people,
    			:care_people,
    			:scaffold_people,
    			:interior_people,
    			:watchman,
    			:garbage_collection_car,
    			:big_garbage_collection_car,
    			:concrete_car,
    			:big_concrete_car,
    			:soil_car,
    			:start_time)
  		end


end
