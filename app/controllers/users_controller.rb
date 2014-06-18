class UsersController < ApplicationController
	before_filter :authenticate_user!
	def profile

		if params[:id]
			@ofuser = User.find(params[:id])
		else
			@ofuser = current_user
		end
		unless @ofuser.profile
			redirect_to new_profile_path
		end
	end
	def home
		@user = current_user
	end
end