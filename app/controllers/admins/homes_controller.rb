class Admins::HomesController < ApplicationController

	def top
		@photos = Photo.all.page(params[:page]).per(3).reverse_order
		@construction_sites = ConstructionSite.all
	end

end
