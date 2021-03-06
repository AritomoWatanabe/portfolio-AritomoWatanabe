class Users::PhotosController < ApplicationController
 before_action :authenticate_user!

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(photo_params)
		if @photo.save
			flash[:notice] = "現場写真を投稿しました！"
			redirect_to users_construction_site_path(@photo.construction_site_id)
		else
			render :new
		end
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def destroy
		@photo = Photo.find(params[:id])
		if @photo.destroy
			flash[:notice] = "現場写真を削除しました！！"
			redirect_to users_construction_sites_path
		else
			render :show
		end
	end

	private
  		def photo_params
    		params.require(:photo).permit(
    			:construction_site_id,:image,:explanation)
  		end


end
