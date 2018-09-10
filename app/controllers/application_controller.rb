class ApplicationController < ActionController::Base

	private

	def authenticate_admin
		unless current_user.admin?
			flash[:alert] = "您不具有管理員身份 !"
			redirect_to root_path
		end
	end
end
