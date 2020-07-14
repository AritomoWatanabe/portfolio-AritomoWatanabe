class Users::PhotosController < ApplicationController

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(photo_params)
		if @photo.save
			redirect_to users_construction_sites_path
		else
			render :new
		end
	end

	private
  		def photo_params
    		params.require(:photo).permit(
    			:construction_site_id,
    			:image,
    			:explanation)
  		end


end
