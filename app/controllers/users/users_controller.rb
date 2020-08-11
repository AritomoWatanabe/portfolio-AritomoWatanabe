class Users::UsersController < ApplicationController
 before_action :authenticate_user!

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "情報を変更しました！"
      redirect_to users_user_path(current_user.id)
    else
      render :edit
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
      	:is_withdrawal,
        :wheather_prefecture)
  end

end
