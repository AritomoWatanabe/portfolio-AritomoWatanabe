class Admins::ConstructionSitesController < ApplicationController

	def index
		@construction_sites = ConstructionSite.all.order(created_at: :desc)
	end

	def new
		@construction_site = ConstructionSite.new
	end

	def create
		@construction_site = ConstructionSite.new(construction_site_params)
		if @construction_site.save
			redirect_to admins_construction_site_path(@construction_site.id)
		else
			redirect_to admins_path
		end
	end

	def show
		@construction_site = ConstructionSite.find(params[:id])
		@photos = Photo.all
	end

	def edit
		@construction_site = ConstructionSite.find(params[:id])
	end

	def update
		@construction_site = ConstructionSite.find(params[:id])
    	if @construction_site.update(construction_site_params)
      		redirect_to admins_construction_site_path(@construction_site.id)
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
