class Users::DailyReportsController < ApplicationController

	def create
		@daily_report = DailyReport.new(daily_report_params)
		@daily_report.save
			redirect_to users_daily_report_path(@daily_report.id)
	end

	def index
		@daily_reports = DailyReport.all
	end

	def show
		@daily_report = DailyReport.find(params[:id])
		@construction_site = ConstructionSite.find(params[:id])
	end

	def edit
		@daily_report = DailyReport.find(params[:id])
		@construction_sites = ConstructionSite.all
	end

	def update
		@daily_report = DailyReport.find(params[:id])
		@construction_site = ConstructionSite.find(params[:id])
		if @daily_report.update(daily_report_params) || @construction_site.update(daily_report_params)
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
    			:soil_car,)
  		end



end
