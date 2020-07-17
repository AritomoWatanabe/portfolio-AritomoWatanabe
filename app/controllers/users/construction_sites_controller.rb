class Users::ConstructionSitesController < ApplicationController

	def index
		@construction_sites = ConstructionSite.all
	end

	def show
		@construction_site = ConstructionSite.find(params[:id])
		@photos = Photo.all
	end

	def map
		@construction_site = ConstructionSite.find(params[:id])
	end


end
