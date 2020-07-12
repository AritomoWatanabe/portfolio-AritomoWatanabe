class Users::PhotosController < ApplicationController

	def new
		@photo = Photo.new(photo_params)
	end

	def create
		@photo = Photo.new(photo_params)
		@photo.save
			redirect_to users_construction_site_path(@construction_site.id)
	end

	private
  		def photo_params
    		params.permit(
    			:construction_site_id,
    			:image_id,
    			:explanation)
  		end


end
