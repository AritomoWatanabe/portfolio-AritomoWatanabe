class Admins::HomesController < ApplicationController
 before_action :authenticate_admin!

	def top
		@photos = Photo.all.page(params[:page]).per(6).reverse_order
		@construction_sites = ConstructionSite.all
	end

end
