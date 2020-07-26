class Admins::PhotosController < ApplicationController

	def show
		@photo = Photo.find(params[:id])
	end

	private
  		def photo_params
    		params.require(:photo).permit(
    			:construction_site_id,
    			:image,
    			:explanation)
  		end

end
