class Users::UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
    @user = User.find(params[:id])
    if @user.update(user_params)
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
      	:is_withdrawal
    )
  end

end
