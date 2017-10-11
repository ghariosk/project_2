class RegistrationsController < Devise::RegistrationsController # controller added to permit extra columns to be created and updated for users
	private
	def sign_up_params  # permits the create of the extra columns listed
	 params.require(:user).permit(:name, :email, :password, :current_password, :admin, :avatar, :dateofbirth, :startdate, :academy, :stream, :language)
	end
	def account_update_params # permits the update of the extra columns listed
		params.require(:user).permit(:name, :email, :password, :current_password, :admin, :avatar, :dateofbirth, :startdate, :academy, :stream, :language)
	end
end