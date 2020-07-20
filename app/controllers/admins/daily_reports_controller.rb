class Admins::DailyReportsController < ApplicationController
    before_action :authenticate_admin!

	def calendar
		@construction_site = ConstructionSite.find(params[:id])
		@daily_reports = DailyReport.where(construction_site_id: params[:id])
	end

	def show
		@daily_report = DailyReport.find(params[:id])
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
