class Users::ConstructionSitesController < ApplicationController

	def index
		@construction_sites = ConstructionSite.all.page(params[:page]).per(10)
	end

	def show
		@construction_site = ConstructionSite.find(params[:id])
		@photos = Photo.all
	end


end
