class Users::ConstructionSitesController < ApplicationController
 before_action :authenticate_user!

	def index
		@construction_sites = ConstructionSite.page(params[:page]).per(10).search(params[:search]).order(created_at: :desc)
	end

	def show
		@construction_site = ConstructionSite.find(params[:id])
		@photos = @construction_site.photos.page(params[:page]).per(6).reverse_order
	end

	def map
		@construction_site = ConstructionSite.find(params[:id])
	end

	def edit
		@construction_site = ConstructionSite.find(params[:id])
	end

	def update
		@construction_site = ConstructionSite.find(params[:id])
    	if @construction_site.update(construction_site_params)
    		flash[:notice] = "現場情報を編集しました！"
      		redirect_to users_construction_site_path(@construction_site.id)
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
