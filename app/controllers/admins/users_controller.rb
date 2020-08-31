class Admins::UsersController < ApplicationController
 before_action :authenticate_admin!
 GET_LIMIT = 10

	def index
    	@users = User.all.page(params[:page]).per(GET_LIMIT)
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
    	if @user.update(user_params)
          flash[:notice] = "従業員情報を変更しました！"
      		redirect_to admins_user_path(@user.id)
    	else
      		render action: :edit
    	end
	end


	private
  		def user_params
    		params.require(:user).permit(
      			:family_name,
      			:first_name,
      			:family_name_kana,
      			:first_name_kana,
      			:email,
      			:address,
      			:telephone_number,
      			:is_withdrawal)
  		end

end
