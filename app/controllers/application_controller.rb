class ApplicationController < ActionController::Base

	def after_sign_in_path_for(resource)
		case resource
		when Admin
	    	admins_root_path
	  	when User
	    	users_root_path
	  	end
	end

	def after_sign_up_path_for(resource)
		admins_users_path
	end

	# def after_sign_out_path_for(resource)
	# 	case resource
	# 	when Admin
	# 		new_admin_session_path
	# 	when User
	# 		new_user_session_path
	# 	end
	# end


	# deviseに関わる全てのアクションの前にconfigure_permitted_parametersをさせる
	# つまりキーをコントローラに受け取らせる
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys:[:family_name, :first_name , :family_name_kana, :first_name_kana, :postal_code, :address,:telephone_number])
	end

end
