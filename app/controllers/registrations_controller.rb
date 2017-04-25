class RegistrationsController < Devise::RegistrationsController

	private

	def sign_up_params
	  params.require(:admin).permit(:name, :email, :password, :password_confirmation, :customer)
	end

	def account_update_params
	  params.require(:admin).permit(:name, :email, :password, :password_confirmation, :current_password, :customer)
	end

end 