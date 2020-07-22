class Admins::ConstructionSitesController < ApplicationController
 before_action :authenticate_admin!

	def index
		@construction_sites = ConstructionSite.page(params[:page]).per(10).search(params[:search]).order(created_at: :desc)
	end

	def new
		@construction_site = ConstructionSite.new
	end

	def create
		@construction_site = ConstructionSite.new(construction_site_params)
		if @construction_site.save
			flash[:notice] = "新しい現場を追加しました！"
			redirect_to admins_construction_site_path(@construction_site.id)
		else
			render action: :new
		end
	end

	def show
		@construction_site = ConstructionSite.find(params[:id])
		@photos = @construction_site.photos.page(params[:page]).per(6).reverse_order
	end

	def edit
		@construction_site = ConstructionSite.find(params[:id])
	end

	def update
		@construction_site = ConstructionSite.find(params[:id])
    	if @construction_site.update(construction_site_params)
    		flash[:notice] = "現場情報を編集しました！"
      		redirect_to admins_construction_site_path(@construction_site.id)
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
