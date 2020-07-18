class Users::ConstructionSitesController < ApplicationController

	def index
		@construction_sites = ConstructionSite.all.order(created_at: :desc)
	end

	def show
		@construction_site = ConstructionSite.find(params[:id])
		@photos = Photo.all
	end

	def map
		@construction_site = ConstructionSite.find(params[:id])
	end

	def edit
		@construction_site = ConstructionSite.find(params[:id])
	end

	def update
		@construction_site = ConstructionSite.find(params[:id])
    	if @construction_site.update(construction_site_params)
      		redirect_to users_construction_site_path(@construction_site.id)
    	else
      		render action: :edit
    	end
	end

	private
	def construction_site_params
		params.require(:construction_site).permit(
			:name, :address, :prime_contractor, :foremen, :process, :period, :period_end, :caution)
	end


end
