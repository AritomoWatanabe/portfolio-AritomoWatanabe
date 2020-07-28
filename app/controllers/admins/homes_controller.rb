class Admins::HomesController < ApplicationController
 before_action :authenticate_admin!

	def top
		@photos = Photo.all.page(params[:page]).per(6).order(created_at: :desc)
		@construction_sites = ConstructionSite.all
	end

end
